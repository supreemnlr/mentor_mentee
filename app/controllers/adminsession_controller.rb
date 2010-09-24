class AdminsessionController < ApplicationController
  def index
  end

  def new
  end
def create
        valid = authenticate(params[:admin])
      
        if valid
       
        session[:user_id]=valid.email       
        redirect_to :action => 'show', :id=>valid.id
        else
            flash[:notice] = "Invalid User/Password"
            redirect_to :action=> 'new'
        end
end

  def show
    
  end

  def destroy
         session[:user_id] = nil
  redirect_to new_adminsession_url
  end

def authenticate(params)
        valid_user = Admin.find(:first,:conditions => ["email = ? and password = ?",params[:email],params[:password]])
 end
end
