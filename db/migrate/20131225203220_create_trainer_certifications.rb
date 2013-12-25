class CreateTrainerCertifications < ActiveRecord::Migration
  def change
    create_table :trainer_certifications do |t|
      t.integer :trainer_id
      t.integer :certification_id

      t.timestamps
    end
  end
end
