class User < ApplicationRecord
  has_many :user_races
  has_many :races, through: :user_races
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
