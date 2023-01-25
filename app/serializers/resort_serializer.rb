class ResortSerializer < ActiveModel::Serializer
  attributes :id, :name, :map, :top_ele, :base_ele, :vertical, :area, :runs, :pic
  belongs_to :trip
end
