class MyprofilesController < ApplicationController
layout 'application1'
prepend_before_filter :authenticate_user!


	 def index
   		 @users = User.find(current_user.id)
   		  respond_to do |format|
    		  format.html # index.html.erb
    		 
 		end
	end
       

	def myquestions
		@ques = Question.where("user_id =?",params[:id])
               

	end
	  def create
  		  @user = User.create( params[:user] )
	  end

	def edit
	end

	def update

		 @user = User.find(params[:id])

		 respond_to do |format|
     
		     if @user.update_attributes(params[:user])
		 	format.html { redirect_to(myprofiles_path, :notice => 'Profile was successfully updated.') }
  			format.xml  { head :ok }
      		     else
		        format.html { render :action => "edit" }
		        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
     		     end
   		  end
	end
end
