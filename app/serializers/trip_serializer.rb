class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :location, :hashtag, :slogan, :song, :bracket
end
