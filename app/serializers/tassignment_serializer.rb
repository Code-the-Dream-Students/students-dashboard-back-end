class TassignmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :tlessons
end
