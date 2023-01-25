class ShredderSerializer < ActiveModel::Serializer
  attributes :id, :name, :nickname, :dob, :kind, :pic
end
