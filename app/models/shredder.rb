class Shredder < ApplicationRecord
  has_and_belongs_to_many :trips
  has_many :gears
  has_many :awards
end
