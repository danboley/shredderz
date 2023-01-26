class AttendSerializer < ActiveModel::Serializer
  attributes :id, :present
  belongs_to :shredder
  belongs_to :trip
end
