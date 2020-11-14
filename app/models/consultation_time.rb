class ConsultationTime < ApplicationRecord
  belongs_to :hospital
  belongs_to :consultation_day

  validates :start_hour, presence: true
  validates :start_minute, presence: true
  validates :finish_hour, presence: true
  validates :finish_minute, presence: true
end
