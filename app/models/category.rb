class Category < ActiveRecord::Base

has_many :subcategories

<<<<<<< HEAD
=======

>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d
has_many :subcategories, :dependent => :destroy
validates_presence_of :name
validates_uniqueness_of :name, :case_sensitive => false

<<<<<<< HEAD
end
=======
end 
>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d
