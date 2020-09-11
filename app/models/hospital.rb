class Hospital < ApplicationRecord
  has_many :comments
  has_many :medicals
  has_many :medical_departments, through: :medicals
  has_many :consultation_times
  has_many :consultation_days, through: :consultation_times

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search_name_address(search)
    Hospital.where(['name LIKE ? OR address LIKE ?', "%#{search}%", "%#{search}%"])
  end

  def self.search_address(search)
    Hospital.where(['address LIKE ?', "%#{search}%"])
  end

  # def self.search_medical_deaprtment(search)
    # Hospital.medical_deaprtments.where(['name LIKE ?', "%#{search}%"])
  # end
end