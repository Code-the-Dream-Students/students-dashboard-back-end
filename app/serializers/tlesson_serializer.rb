class TlessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :learning_objectives

  has_many :tunits
  has_many :tmaterials
  has_many :tassignments
end
