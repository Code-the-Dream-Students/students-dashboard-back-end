class TcourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :tunits
end
