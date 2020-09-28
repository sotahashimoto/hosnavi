class Event < ApplicationRecord
  belongs_to :member

  validates :start_time, presence: true
  validates :title, length: { in: 1..20 }
end
