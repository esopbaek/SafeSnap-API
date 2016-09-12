class CreateImageSets < ActiveRecord::Migration
  def change
    create_table :image_sets do |t|
      t.string "name"
      t.string "description"
      t.string "patient_id"
      t.timestamps null: false
    end
  end
end
