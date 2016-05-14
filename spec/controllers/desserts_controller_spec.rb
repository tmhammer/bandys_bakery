require 'rails_helper'

describe DessertsController do
  describe "GET index" do
    it "assigns @desserts and @dessert_types with proper sorting" do
      dessert_2 = Dessert.create(name: 'Second', description: 'foo', ingredients: 'bar', price: 'free')
      dessert_1 = Dessert.create(name: 'First', description: 'foo', ingredients: 'bar', price: 'free')

      type_2 = DessertType.create(name: 'Second')
      type_1 = DessertType.create(name: 'First')

      get :index
      expect(assigns(:desserts)).to eq([dessert_1, dessert_2])
      expect(assigns(:dessert_types)).to eq([type_1, type_2])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
