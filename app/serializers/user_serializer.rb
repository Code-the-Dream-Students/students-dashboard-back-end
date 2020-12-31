class UserSerializer < ActiveModel::Serializer
  attributes :email, :username
end

# class UserSerializer
#   include JSONAPI::Serializer
#   attributes :email, :username
# end

