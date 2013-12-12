class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me
  
  has_many :tasklists, :dependent => :destroy

  validates :name, presence: true, uniqueness: true
  emailFormatValidation = /[a-zA-Z.-]+@[a-z \d .-]+[.][a-z]/i
  validates :email, format: {with: emailFormatValidation}, uniqueness: true
  validates :password, length: {within: 6..12}
  validates :password, confirmation: true
end
