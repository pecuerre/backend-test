class Event < ActiveRecord::Base
	SEPARATOR = "||"


  def date_list
  	self.dates.to_s.split(Event::SEPARATOR)
  end
end
