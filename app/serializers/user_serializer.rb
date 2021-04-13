class UserSerializer < ActiveModel::Serializer
  attributes :message, :id, :email, :username, :role

  has_one :student, if: :is_student?
  has_one :mentor, if: :is_mentor?
  has_one :staff, if: :is_staff?

  def message
    message = "Success"
  end

  def is_student?
    object.role == "student"
  end

  def is_mentor?
    object.role == "mentor"
  end

  def is_staff?
    object.role == "staff"
  end

  def is_admin?
    object.role == "admin"
  end
end

# class UserSerializer
#   include JSONAPI::Serializer
#   attributes :email, :username
# end

