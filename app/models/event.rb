class Event < ApplicationRecord
  belongs_to :member

  validates :start_time, presence: true
  validates :title, presence: true
  validates :title, length: {maximum: 25}
  validates :content, length: {maximum: 25}
end
