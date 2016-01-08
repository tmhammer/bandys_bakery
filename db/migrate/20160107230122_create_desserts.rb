class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.decimal :price, :precision => 8, :scale => 2
    end
  end
end
