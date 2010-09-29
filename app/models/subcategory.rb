class Subcategory < ActiveRecord::Base
belongs_to :category
validates_presence_of :name , :category_id
end
