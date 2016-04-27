ActiveAdmin.register Dessert do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :description, :ingredients, :price, :image, :remove_image, dessert_type_ids: []

  index do
    column :name
    column :description
    column :ingredients
    column :price
    column :dessert_types do |d|
      d.dessert_type.map(&:name)
    end
    column :image do |d|
      image_tag(d.image.url(:thumb))
    end
    actions
  end

  form do |f|
    f.inputs "Dessert Details" do
      f.input :name
      f.input :description
      f.input :ingredients
      f.input :price
      #f.input :dessert_type_ids, :as => :checkbox, :multiple => true, collection: DessertType.all
      selectable_terms = DessertType.all.map { |i| [i.name, i.id] }
      selected_terms = resource.dessert_type.map(&:id)
      f.input :dessert_type,
        as:         :select2_multiple,
        collection: options_for_select(selectable_terms, selected_terms),
        input_html: { class: 'multiple-select' }
    end

    f.inputs "Image", :multipart => true do 
      f.input :image, :as => :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:thumb))
        : content_tag(:span, "No image yet")
      f.input :remove_image, as: :boolean, required: :false, label: 'Remove image'
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :description
      row :ingredients
      row :price
      row :dessert_types do 
        ad.dessert_type.map{ |dt| dt.name }
      end
      row :image do
        image_tag(ad.image.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

end
