class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable,:verify

  # Setup accessible (or protected) attributes for your model
  attr_accessible :fname, :lname, :email, :password, :password_confirmation, :dob, :gender, :country, :city, :state, :phone , :role, :picture, :qualification,:remember_me, :avatar_file_name, :avatar_content_type, :avatar_file_size


end
