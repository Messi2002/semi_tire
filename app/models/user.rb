class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments
  validates :nickname, presence: true, length: { maximum: 6 }
  validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
  validates :password_confirmation, presence: true, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
end
