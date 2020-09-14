class HospitalFavorite < ApplicationRecord
  belongs_to :member
  belongs_to :hospital
end
