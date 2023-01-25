class GearSerializer < ActiveModel::Serializer
  attributes :id, :year, :brand, :model, :specs, :pic
  belongs_to :shredder
end
