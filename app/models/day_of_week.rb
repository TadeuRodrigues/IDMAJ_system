class DayOfWeek < ActiveRecord::Base
	has_many :schedules
end
