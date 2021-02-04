class UnitSerializer < ActiveModel::Serializer
  attributes :id, :unit_name, :description

  has_many :weeks
end
