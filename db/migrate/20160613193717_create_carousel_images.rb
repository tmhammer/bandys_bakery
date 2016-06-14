class CreateCarouselImages < ActiveRecord::Migration
  def change
    create_table :carousel_images do |t|
      t.string :name
      t.attachment :image
    end
  end
end
