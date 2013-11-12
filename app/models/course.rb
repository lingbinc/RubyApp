class Course < ActiveRecord::Base
	  scope :easy_course, -> {where('difficulty=?','easy')}
	  scope :medium_course, -> {where('difficulty=?','medium')}
	  scope :hard_course, -> {where('difficulty=?','hard')}

  attr_accessible :difficulty, :name
  validates :name, presence: true
  DIFFICULTY_LEVEL =['easy','medium','hard']

end
