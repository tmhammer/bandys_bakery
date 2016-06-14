class HomeController < ApplicationController

  def index
    @announcements = Announcement.order(created_at: :desc)
    @carousel_images = CarouselImage.all
    render
  end

end
