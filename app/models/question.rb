class Question < ActiveRecord::Base
  has_many :answers
 validates :name, :presence => true 
 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
