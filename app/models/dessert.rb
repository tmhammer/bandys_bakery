class Dessert < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :price, presence: true
end
