class Dessert < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :price, presence: true

  has_and_belongs_to_many :dessert_type, join_table: :desserts_dessert_types

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  attr_writer :remove_image

  def remove_image
    @remove_image || false
  end

  before_validation { self.image.clear if self.remove_image == '1' }
end
