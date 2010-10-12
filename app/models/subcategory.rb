class Subcategory < ActiveRecord::Base
belongs_to :category
has_many :questions
validates_presence_of :name , :category_id
end
