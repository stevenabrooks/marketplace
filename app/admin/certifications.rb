ActiveAdmin.register Certification do
  index do
    column :name
    column :abbreviation
    column :description
  end

  show do
    attributes_table do
      row :name
      row :abbreviation
      row :description
    end
  end
  
end
