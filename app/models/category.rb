class Category < ActiveRecord::Base
has_many :subcategories
validates_presence_of :name
end
