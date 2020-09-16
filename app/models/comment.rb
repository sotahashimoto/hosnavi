class Comment < ApplicationRecord
  belongs_to :member
  has_many :favorites

  validates :content, presence: true
end
