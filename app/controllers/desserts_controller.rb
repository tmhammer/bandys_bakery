class DessertsController < ApplicationController
  def index
    @dessert_types = DessertType.order(:name)
    @desserts = Dessert.order(:name)
    render
  end
end
