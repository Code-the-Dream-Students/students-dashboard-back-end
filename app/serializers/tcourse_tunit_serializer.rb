class TcourseTunitSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :tcourse
  belongs_to :tunit
end
