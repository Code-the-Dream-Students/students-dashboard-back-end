class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :assignment
  has_many :sources, through: :lesson_sources
end
