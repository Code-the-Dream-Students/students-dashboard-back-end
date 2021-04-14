class LessonAssignmentSerializer < ActiveModel::Serializer
  attributes :id, :lesson_id, :assignment_id

  belongs_to :lesson
  belongs_to :assignment
end
