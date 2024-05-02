class Race < ApplicationRecord
  has_many :user_races
  has_many :users, through: :user_races
  has_many :race_stages
  has_many :stages, through: :race_stages
end
