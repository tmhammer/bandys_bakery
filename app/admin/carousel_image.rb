ActiveAdmin.register CarouselImage do

  permit_params :name, :image, :remove_image

  index do
    column :name
    column :image do |d|
      image_tag(d.image.url(:thumb))
    end
    actions
  end

  form do |f|
    f.inputs "Name" do
      f.input :name
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
      row :image do
        image_tag(ad.image.url(:thumb))
      end
    end
  end

end
