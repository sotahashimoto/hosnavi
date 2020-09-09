class MedicalDepartment < ApplicationRecord
  has_many :medicals
  has_many :hospitals, through: :medicals
end