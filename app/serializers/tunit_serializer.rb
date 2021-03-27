class TunitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration

  has_many :tcourses
  has_many :tlessons

end
