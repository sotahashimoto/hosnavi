class ConsultationDay < ApplicationRecord
  has_many :hospitals, through: :consultation_times
  has_many :consultation_times
end
