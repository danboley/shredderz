class Trip < ApplicationRecord
  has_and_belongs_to_many :shredders
end