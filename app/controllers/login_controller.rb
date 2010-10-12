class LoginController < ApplicationController
 

def create
   valid = authenticate(params[:user])
 
     if valid 
          puts '333333333333333333333333333333333'
       redirect_to new_login_path
     else
       puts '77777777777777777777777'
       redirect_to new_user_registration_path
  end
 
 end



 def authenticate(params)
    valid_user = User.find(:first,:conditions => ["email=?",params[:email]])
 end
 
end
