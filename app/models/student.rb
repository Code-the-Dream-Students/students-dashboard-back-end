class Student < ApplicationRecord
  # Model associations
  belongs_to :user

# Validations
  # validates :role, presence: true

  validates_presence_of :first_name, :last_name, :user
end
