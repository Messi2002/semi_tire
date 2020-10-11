class Tweet < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Tweet.where('content LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
