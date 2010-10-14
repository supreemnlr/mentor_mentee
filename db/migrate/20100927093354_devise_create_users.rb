class DeviseCreateUsers < ActiveRecord::Migration
  def self.up

    create_table(:users) do |t|
      t.string :fname 
      t.string :lname
      t.string :email
      t.string :password
      t.date :dob
      t.string :gender
      t.string :state
      t.string :country
      t.string :city
      t.string :phone
      t.string :role
      t.string :picture
      t.string :remember_me
      t.boolean :verify => false
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

       t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
       #t.token_authenticatable


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
     add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :users
  end
end
