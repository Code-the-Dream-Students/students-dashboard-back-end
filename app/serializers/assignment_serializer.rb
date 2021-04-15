class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :lesson_id, :description, :link

  has_many :lessons  
end
