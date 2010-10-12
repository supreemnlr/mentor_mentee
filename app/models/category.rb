class Category < ActiveRecord::Base
<<<<<<< HEAD
has_many :subcategories

=======
has_many :subcategories, :dependent => :destroy
validates_presence_of :name
validates_uniqueness_of :name, :case_sensitive => false
>>>>>>> 902e3766cf49a1d370adab645075f23243d026b5
end
