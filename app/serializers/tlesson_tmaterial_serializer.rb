class TlessonTmaterialSerializer < ActiveModel::Serializer
  attributes :id, :tlesson_id, :tmaterial_id

  belongs_to :tlesson
  belongs_to :tmaterial
end
