class Tasklist < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  attr_accessible :title, :priority, :user_id, :course_id
  validates :title, presence: true
  PRIORITY_LEVEL = [1,2,3,4,5]
end
