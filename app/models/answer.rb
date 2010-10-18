class Answer < ActiveRecord::Base
  belongs_to :question
<<<<<<< HEAD
  validates :name, :presence => true
 # acts_as_rateable
=======
 validates :name, :presence => true
 
>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d
end
