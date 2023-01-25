class Award < ApplicationRecord
  belongs_to :trip
  belongs_to :shredder
end
