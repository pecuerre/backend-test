class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_featured_events

  def set_featured_events
  	min = Time.now.strftime("%Y-%m-%d 00:00:00")
  	max = Time.now.strftime("%Y-%m-%d 23:59:59")
  	@featured_events = EventDate.where("`when` >= ? AND `when` <= ?", min, max)
  end
end
