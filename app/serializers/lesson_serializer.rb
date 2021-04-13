class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :cohort_id

  has_one :assignment
  has_many :materials
  belongs_to :cohort
  # has_one :assignment
  # has_many :sources, through: :lesson_sources
end
