class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :name, presence: true
  validates :nickname, presence: true
  validates :nickname, length: { maximum: 15 }

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[google_oauth2]

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

  protected
  def self.find_for_google(auth)
    member = Member.find_by(email: auth.info.email)

    unless member
      member = Member.create!(name: auth.info.name,
                          nickname: auth.info.name,
                             email: auth.info.email,
                          provider: auth.provider,
                          uid:      auth.uid,
                          token:    auth.credentials.token,
                          password: Devise.friendly_token[0, 20],
                          meta:     auth.to_yaml)
    end
    member
  end
end
