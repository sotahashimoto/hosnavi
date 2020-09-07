class Hospital < ApplicationRecord
  has_many :comments
  has_many :medicals
  has_many :medical_departments, through: :medicals
  has_many :consultation_times
end
