class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :abbreviation
      t.text :description

      t.timestamps
    end
  end
end
