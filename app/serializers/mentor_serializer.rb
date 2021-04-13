class MentorSerializer < ActiveModel::Serializer
  attributes :user_id, :first_name, :last_name, :title

  belongs_to :user
end
