class Course < ActiveRecord::Base
  attr_accessible :difficulty, :name
  validates :name, presence: true
end
