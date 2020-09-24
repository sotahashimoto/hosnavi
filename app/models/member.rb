class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :favorites
  has_many :hospital_favorites
  has_many :hospitals, through: :hospital_favorites
  has_many :events

  attachment :image

  def already_favorited?(comment)
    self.favorites.exists?(comment_id: comment.id)
  end

  def already_hospital_favorited?(hospital)
    self.hospital_favorites.exists?(hospital_id: hospital.id)
  end
end
