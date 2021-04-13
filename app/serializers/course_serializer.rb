class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :cohorts
  has_many :units
end
