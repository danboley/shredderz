class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :location, :hashtag, :slogan, :song, :bracket
  has_many :awards
  has_many :resorts
  has_many :accommodations
  has_many :attends
  has_many :shredders, through: :attends
end
