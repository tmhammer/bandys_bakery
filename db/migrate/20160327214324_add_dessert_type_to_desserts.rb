class AddDessertTypeToDesserts < ActiveRecord::Migration
  def change
    change_table :desserts do |t|
      t.belongs_to :dessert_type, index: true
    end
  end
end
