class Event < ActiveRecord::Base
	SEPARATOR = "||"
	has_many :event_dates
	after_save :update_event_dates
	before_destroy :remove_event_dates
	belongs_to :user

	def date_list
		self.dates.to_s.split(Event::SEPARATOR)
	end

	def update_event_dates
		self.remove_event_dates
		self.date_list.each do |d|
			EventDate.create(:when => d, :event_id => self.id)
		end
	end

	def remove_event_dates
		self.event_dates.each do |ed|
			ed.destroy
		end
	end
end
