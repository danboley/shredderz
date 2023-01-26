class Trip < ApplicationRecord
  has_and_belongs_to_many :shredders
  has_many :accommodations
  has_many :resorts
  has_many :awards
end
