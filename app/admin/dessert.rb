ActiveAdmin.register Dessert do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :description, :ingredients, :price, :image, :dessert_type_id

  form do |f|
    f.inputs "Dessert Details" do
      f.input :name
      f.input :description
      f.input :ingredients
      f.input :price
      #f.has_many :dessert_type do |t|
      #  t.input :name
      #end
      f.input :dessert_type
      f.input :image, :required => false, :as => :file
      # Will preview the image when the object is edited
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :description
      row :ingredients
      row :price
      row :dessert_type
      row :image do
        image_tag(ad.image.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

end
