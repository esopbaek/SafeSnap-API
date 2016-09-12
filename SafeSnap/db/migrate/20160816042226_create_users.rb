class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  "email"
      t.string "first_name"
      t.string "last_name"
      t.string "profile_photo_url"
      t.string "type"
      t.timestamps null: false
    end
  end
end
