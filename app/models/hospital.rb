class Hospital < ApplicationRecord
  has_many :comments
  has_many :medicals
  has_many :hospital_favorites
  has_many :medical_departments, through: :medicals
  has_many :consultation_times
  has_many :consultation_days, through: :consultation_times

  attachment :image

  accepts_nested_attributes_for :medicals

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
    return result #別にいらない
  end
end