class CreateDessertsDessertTypes < ActiveRecord::Migration
  def change
    change_table :desserts do |t|
      t.remove :dessert_type_id
    end

    create_table :desserts_dessert_types, id: false do |t|
      t.belongs_to :dessert, index: true
      t.belongs_to :dessert_type, index: true
    end
  end
end
