class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :lesson_id, :description, :link

  belongs_to :lesson
end
