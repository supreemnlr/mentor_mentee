class QuestionsController < ApplicationController
layout 'application'
prepend_before_filter :authenticate_user!
<<<<<<< HEAD
=======

>>>>>>> 31a48f4099fcbb35cb380bbc2504ca17d5c6e96d
  # GET /questions
  # GET /questions.xml
  def index
     
    #  @questions = Question.all

    # respond_to do |format|
     # format.html # index.html.erb
     # format.xml  { render :xml => @questions }
    #end
  
  end

  # GET /questions/1
  # GET /questions/1.xml
  def show
    @question = Question.find(params[:id])
    @answerlist = Answer.where("question_id = ?", @question.id )
   
  end

  # GET /questions/new
  # GET /questions/new.xml
  def new
    @question = Question.new
     if request.xhr?
          
            @subcat = Subcategory.find(:all,:conditions=>['category_id=?',params[:id]])
            render :update do |page|
            page.replace_html :test, :partial => 'test'
          end
     else
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question }
    end
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.xml
  def create
    @question = Question.new(params[:question] )
    @question.user_id=current_user.id
   respond_to do |format|
    if @question.save
         format.html { render :action => "create" }    
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end    
      end
  end

  # PUT /questions/1
  # PUT /questions/1.xml
  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to(@question, :notice => 'Question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.xml
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(questions_url) }
      format.xml  { head :ok }
    end
  end

def load_subcategories
puts "#### Category Id - #{params[:id]}"
@subcategories = Subcategory.where(:category_id => params[:id])
respond_to do |format|
format.js{
render :update do |page| 
page[:question_subcategory_id].replace collection_select(:question,:subcategory_id, @subcategories , :id, :name,{},{:style =>'width:17%'})
end
}
end
end
end
