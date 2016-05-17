class CourseSession < ActiveRecord::Base
  has_many :attendances
  has_many :students, through: :attendances

  validates :date, presence: true, uniqueness: true

end
