class User < ApplicationRecord
    # encrypt password
    has_secure_password

    # Model associations
    has_one :student, foreign_key: :user_id
    has_one :mentor, foreign_key: :user_id
    has_one :staff, foreign_key: :user_id
  # Validations
  validates_presence_of :username, :email, :password_digest
end