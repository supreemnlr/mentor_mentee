class AdminController < ApplicationController
  def index
   puts"$$$$$$$$$$$$$$$$$$$$$$$$"
  end
 def new

 end
 def create
 puts "*************************"
 @details = Admin.new(params[:admin])
 @details.save  
 end

end
