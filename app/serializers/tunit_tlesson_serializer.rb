class TunitTlessonSerializer < ActiveModel::Serializer
  attributes :id, :tunit_id, :tlesson_id

  belongs_to :tunit
  belongs_to :tlesson
end
