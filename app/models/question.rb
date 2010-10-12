class Question < ActiveRecord::Base
  has_many :answers
 validates :name, :presence => true 
 validates :description, :presence => true
end
