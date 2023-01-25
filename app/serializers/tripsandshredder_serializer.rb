class TripsandshredderSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :trip
  belongs_to :shredder
end
