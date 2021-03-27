class TcourseTunitSerializer < ActiveModel::Serializer
  attributes :id, :tcourse_id, :tunit_id

  belongs_to :tcourse
  belongs_to :tunit
end
