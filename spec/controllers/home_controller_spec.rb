require 'rails_helper'

describe HomeController do
  describe "GET index" do
    it "assigns @announcements with correct sorting" do
      announcement_1 = Announcement.create(title: 'Title', body: 'body')
      announcement_2 = Announcement.create(title: 'Title 2', body: 'body2')

      get :index
      expect(assigns(:announcements)).to eq([announcement_2, announcement_1])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
