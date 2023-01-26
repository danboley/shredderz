class ShredderSerializer < ActiveModel::Serializer
  attributes :id, :name, :nickname, :dob, :kind, :pic
  has_many :gears
  has_many :awards
end
