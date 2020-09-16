class MedicalDepartment < ApplicationRecord
  has_many :medicals
  has_many :hospitals, through: :medicals

  def self.search(search)
    MedicalDepartment.where(['name LIKE ?', "%#{search}%"])
  end
end