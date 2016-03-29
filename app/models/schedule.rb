class Schedule < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :type_of_class
  belongs_to :age_of_student
  belongs_to :day_of_week
end
