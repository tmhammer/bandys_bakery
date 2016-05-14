class DessertType < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_and_belongs_to_many :desserts, join_table: :desserts_dessert_types
end
