class MyprofilesController < ApplicationController
layout 'application1'
prepend_before_filter :authenticate_user!
def index
end
def myquestions
@ques = Question.where("user_id =?",params[:id])
end
def edit
end
def update

 @user = User.find(params[:id])

 respond_to do |format|
     
     if @user.update_attributes(params[:user])
        #render credentials_path
       format.html { render :action=>"index" }
       #format.xml  { head :ok }
     else
       format.html { render :action => "edit" }
       format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
     end
   end
end
end
