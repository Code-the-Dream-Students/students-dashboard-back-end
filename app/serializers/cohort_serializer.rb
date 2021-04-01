class CohortSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date

  has_many :courses
end
