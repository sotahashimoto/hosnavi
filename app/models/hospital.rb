class Hospital < ApplicationRecord
  has_many :comments
  has_many :medicals
  has_many :medical_departments, through: :medicals
  has_many :consultation_times
  has_many :consultation_days, through: :consultation_times

  def self.search(search)
    Hospital.where(['name LIKE ?', "%#{search}%"])
  end
end
