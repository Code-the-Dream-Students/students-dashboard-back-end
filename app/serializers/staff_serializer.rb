class StaffSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :title

  belongs_to :user
end
