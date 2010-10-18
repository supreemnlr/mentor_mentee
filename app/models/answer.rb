class Answer < ActiveRecord::Base
  belongs_to :question
  validates :name, :presence => true
 # acts_as_rateable
end
