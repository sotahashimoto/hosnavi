class Comment < ApplicationRecord
  belongs_to :member
  # belongs_to :hospital
  has_many :favorites

  validates :content, presence: true
  validates :score, presence: true
end
