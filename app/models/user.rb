class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         # Model associations
  has_one :student, foreign_key: :user_id
  has_one :mentor, foreign_key: :user_id
  has_one :staff, foreign_key: :user_id
# Validations
  # validates :role, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


  def self.handle_login(email, password)
    user = User.find_by(email: email.downcase)
    if user&.valid_password?(password)
      user_info = Hash.new
      user_info[:token] = CoreModules::JsonWebToken.encode({
        user_id: user.id
      }, 24.hours.from_now)
      return user_info
    else
      return false
    end
  end

  # validates_presence_of :password_digest
end
