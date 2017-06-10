class Appoinment < ActiveRecord::Base

	validate :start_date_cannot_be_in_the_past
    #validate :stime
	validates :start_time, :end_time, :overlap  => true

	def start_date_cannot_be_in_the_past
		if start_time && start_time < DateTime.now + (15.minutes)
			
			errors.add(:start_time, 'must be at least 15 minutes from present time')
			end
		end

	def stime
		#if starttime && starttime < DateTime.now + (5.hours)
		
		#starttime=(Time.now.utc + 5.hours)
		#@endtime=(Time.now.utc + 5.hours).in_time_zone("Eastern Time (US & Canada)")
	end
end
