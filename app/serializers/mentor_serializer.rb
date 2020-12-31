class MentorSerializer < ActiveModel::Serializer
  attributes :user_id, :first_name, :last_name, :title
end
