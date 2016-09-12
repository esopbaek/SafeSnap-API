class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string "name"
      t.string "url"
      t.string "description"
      t.integer "image_set_id"
      t.timestamps null: false
    end
  end
end
