class AwardSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  belongs_to :trip
  belongs_to :shredder
end
