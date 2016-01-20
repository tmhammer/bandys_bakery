class DessertsController < ApplicationController
  def index
    @desserts = Dessert.all
    render
  end
end
