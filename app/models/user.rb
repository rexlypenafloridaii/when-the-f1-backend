class User < ApplicationRecord
  has_many :user_races
  has_many :races, through: :user_races
end
