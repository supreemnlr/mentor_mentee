class Category < ActiveRecord::Base

has_many :subcategories


has_many :subcategories, :dependent => :destroy
validates_presence_of :name
validates_uniqueness_of :name, :case_sensitive => false

end 
