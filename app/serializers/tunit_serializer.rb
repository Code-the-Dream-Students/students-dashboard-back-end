class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration
end
