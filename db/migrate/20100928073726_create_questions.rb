class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string  :name
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :user_id
      t.string  :avatar_file_name
      t.string  :description

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
