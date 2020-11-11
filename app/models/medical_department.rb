class MedicalDepartment < ApplicationRecord
  has_many :medicals
  has_many :hospitals, through: :medicals

  validates :name, presence: true
  validates :name, length: {maximum: 10}

  def self.search(search)
    MedicalDepartment.where(['name LIKE ?', "%#{search}%"])
  end
end