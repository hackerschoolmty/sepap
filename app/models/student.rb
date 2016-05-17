class Student < ActiveRecord::Base
  has_many :attendances

  def to_s
    "#{name} #{last_name}"
  end
end
