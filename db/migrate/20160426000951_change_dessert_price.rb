class ChangeDessertPrice < ActiveRecord::Migration
  def change
    change_column :desserts, :price, :string
  end
end
