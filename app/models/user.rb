class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  validates :name, presence: true, uniqueness: true
  emailFormatValidation = /[a-zA-Z.-]+@[a-z \d .-]+[.][a-z]/i
  validates :email, format: {with: emailFormatValidation}, uniqueness: true
  validates :password, length: {within: 6..12}
  validates :password, confirmation: true
end
