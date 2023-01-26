class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :location, :hashtag, :slogan, :song, :bracket
  has_many :awards
  has_many :resorts
  has_many :accommodations
end
