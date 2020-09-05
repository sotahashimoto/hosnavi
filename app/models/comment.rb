class Comment < ApplicationRecord
  belongs_to :member
  has_many :favorites
end
