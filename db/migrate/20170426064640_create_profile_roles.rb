class CreateProfileRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_roles do |t|
      t.string :role
      t.timestamps
    end
  end
end
