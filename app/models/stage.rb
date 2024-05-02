class Stage < ApplicationRecord
  has_many :race_stages
  has_many :races, through: :race_stages
end
