class CreateDessertType < ActiveRecord::Migration
  def change
    create_table :dessert_types do |t|
      t.string :name
    end
  end
end
