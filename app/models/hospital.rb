class Hospital < ApplicationRecord
  has_many :comments
  has_many :medicals
end
