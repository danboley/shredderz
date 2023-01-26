class Trip < ApplicationRecord
  has_many :accommodations
  has_many :resorts
  has_many :awards
  has_many :attends
  has_many :shredders, through: :attends
end
