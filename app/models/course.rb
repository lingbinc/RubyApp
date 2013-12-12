class Course < ActiveRecord::Base
	  scope :easy_course, -> {where('difficulty=?','easy')}
	  scope :medium_course, -> {where('difficulty=?','medium')}
	  scope :hard_course, -> {where('difficulty=?','hard')}

  attr_accessible :difficulty, :description, :name

  has_many :tasklists, :dependent => :destroy

  validates :name, presence: true
  DIFFICULTY_LEVEL =['easy','medium','hard']

end
