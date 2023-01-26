class Shredder < ApplicationRecord
  has_many :gears
  has_many :awards
  has_many :attends
  has_many :trips, through: :attends
end
