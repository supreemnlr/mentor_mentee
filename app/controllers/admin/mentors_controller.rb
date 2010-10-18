class Admin::MentorsController < ApplicationController
layout 'admin/dashboard'
prawnto :prawn => {
          :left_margin => 48, 
          :right_margin => 48,
          :top_margin => 24,
          :bottom_margin => 24}


 def index
    @users = User.all
     respond_to do |format|
      format.html # index.html.erb
    

    end
  end
 def show
	@user = User.where("role = ?",'Mentor')
	
 	 respond_to do |format|
 	 format.html
  	  format.pdf { render :layout => false }
 end

end
end


