class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :courses
  # has_many :weeks
  has_many :lessons
end
