class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string "first_name"
      t.string "last_name"
      t.timestamps null: false
    end
  end
end
