class CredentialsController < ApplicationController

  def index
     @questions = Question.all
     respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end
  
 def new
 end
  
 def contactus
 end

 def career
 end

 def myprofile


 end

 def studymat

 end

 def category
 @categories = Category.all

    respond_to do |format|
      format.html 
	format.js
      format.xml  { render :xml => @categories }
    end

 end
def question
@ques = Question.where("subcategory_id =?" ,params[:id])

end

def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end
end
