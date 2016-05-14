class HomeController < ApplicationController

  def index
    @announcements = Announcement.order(created_at: :desc)
    render
  end

end
