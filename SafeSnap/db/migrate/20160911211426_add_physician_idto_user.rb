class AddPhysicianIdtoUser < ActiveRecord::Migration
  def change
    add_column :users, :physician_id, :integer
  end
end
