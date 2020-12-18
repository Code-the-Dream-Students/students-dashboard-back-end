class Student < ApplicationRecord
  # Model associations
  belongs_to :user

  # Needs to have validations
end
