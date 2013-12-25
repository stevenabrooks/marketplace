ActiveAdmin.register Trainer do
  index do
    column :name
    column :email
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :email
    end
  end

end
