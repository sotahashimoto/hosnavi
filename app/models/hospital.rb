class Hospital < ApplicationRecord
  has_many :comments
  has_many :hospital_favorites
  has_many :members, through: :hospital_favorites
  has_many :medicals
  has_many :medical_departments, through: :medicals
  has_many :consultation_times
  has_many :consultation_days, through: :consultation_times

  validates :name, presence: true
  validates :name, length: {maximum: 25}
  validates :postcode, presence: true
  validates :postcode, length: {maximum: 7}
  validates :address, presence: true
  validates :address, length: {maximum: 25}
  validates :feature, presence: true
  validates :feature, length: {maximum: 25}
  validates :short_message, presence: true
  validates :short_message, length: {maximum: 25}
  validates :notices, presence: true
  validates :notices, length: {maximum: 25}
  validates :phone_number, presence: true
  validates :phone_number, length: {maximum: 25}

  accepts_nested_attributes_for :medicals
  accepts_nested_attributes_for :consultation_times

  attachment :image

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search_params)
    hospitals = Hospital.all
    result = hospitals
    if search_params[:search_address].present?
      result = result.where(['address LIKE ?', "%#{search_params[:search_address]}%"])
    end
    if search_params[:search_name_address].present?
      result = result.where(['name LIKE ? OR address LIKE ?', "%#{search_params[:search_name_address]}%", "%#{search_params[:search_name_address]}%"])
    end

    if search_params[:search_medical_department].present?
      medical_departments = []
      search_params[:search_medical_department].each do |department|
        medical_departments += MedicalDepartment.search(department).pluck(:id)
      end
      medicals = Medical.where(medical_department_id: medical_departments)
      result = result.where(id: medicals.pluck(:hospital_id))
    end

    if search_params[:search_link_medical_department].present?
      medical_departments = MedicalDepartment.search("%#{search_params[:search_link_medical_department]}%").pluck(:id)
      medicals = Medical.where(medical_department_id: medical_departments)
      result = result.where(id: medicals.pluck(:hospital_id))
    end
    return result
  end

  def avg_score
    unless self.comments.empty?
      comments.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.comments.empty?
      comments.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end