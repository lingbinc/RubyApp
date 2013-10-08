class Tasklist < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  attr_accessible :title, :user_id, :course_id
end
