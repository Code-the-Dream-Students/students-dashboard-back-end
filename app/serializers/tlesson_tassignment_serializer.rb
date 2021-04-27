class TlessonTassignmentSerializer < ActiveModel::Serializer
  attributes :id, :tlesson_id, :tassignment_id

  belongs_to :tlesson
  belongs_to :tassignment
end
