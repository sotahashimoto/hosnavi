class Comment < ApplicationRecord
  belongs_to :member
  belongs_to :hospital
  has_many :favorites

  validates :content, presence: true
  validates :content, length: {maximum: 200}
  validates :score, presence: true
  validates :score, numericality: {less_than_or_equal_to: 5}

  def review_score_percentage
    unless self.comments.empty?
      comments.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end

end
