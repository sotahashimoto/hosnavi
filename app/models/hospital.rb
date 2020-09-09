class Hospital < ApplicationRecord
  has_many :comments
  has_many :medicals
  has_many :medical_departments, through: :medicals
  has_many :consultation_times
  has_many :consultation_days, through: :consultation_times

  def self.search_name(search)
    Hospital.where(['name LIKE ?', "%#{search}%"])
  end

  def self.search_address(search)
    Hospital.where(['address LIKE ?', "%#{search}%"])
  end
end
