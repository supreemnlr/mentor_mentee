class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :email
      t.string :password
      t.string :phone
      t.string :role

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
