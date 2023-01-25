class AccommodationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :link, :pic
  belongs_to :trip
end
