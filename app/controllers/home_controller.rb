class HomeController < ApplicationController

  def index
    @announcements = Announcement.all
    render
  end

end
