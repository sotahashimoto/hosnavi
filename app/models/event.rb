class Event < ApplicationRecord
  validates :start_time, presence: true
  validates :title, presence: true

  belongs_to :member
end
