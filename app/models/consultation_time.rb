class ConsultationTime < ApplicationRecord
  belongs_to :hospital
  belongs_to :consultation_day
end
