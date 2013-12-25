ActiveAdmin.register Trainer do
  index do
    column :name
    column :email
    column "Rating" do |n|
      n.average_rating
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row "Rating" do |n|
        n.average_rating
      end
    end
  end

end
