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
<<<<<<< HEAD
def question
@ques = Question.where("subcategory_id =?" ,params[:id])

end
=======
 
 
def question
@ques = Question.where("subcategory_id =?",params[:id])

end

>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d

def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
<<<<<<< HEAD
=======

>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d
      format.xml  { render :xml => @category }
    end
  end
end
