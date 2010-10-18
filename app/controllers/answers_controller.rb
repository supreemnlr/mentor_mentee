class AnswersController < ApplicationController
layout 'application'
prepend_before_filter :authenticate_user!
  # GET /answers
  # GET /answers.xml
  def index
    @answers = Answer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.xml
  def show
   # @answer = Answer.find(params[:id])
    @ques = Question.find(params[:id])
    @answerlist = Answer.where("question_id = ?", @ques.id )
    @answerlist= @answerlist.paginate :page => params[:page], :per_page =>2,:order=>'created_at DESC'
    

    #respond_to do |format|
     # format.html # show.html.erb
    #  format.xml  { render :xml => @answer }
   # end
  end

  # GET /answers/new
  # GET /answers/new.xml
  def new
    @ques = Question.find(params[:id])
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
    @answer = Answer.find(params[:id])
  end

  # POST /answers
  # POST /answers.xml
  def create
    @answer = Answer.new(params[:answer])
    @answer.question_id = params[:q_id].to_i
    @answerlist = Answer.where("question_id = ?", @answer.question_id)   
    @question = Question.find(params[:q_id]) 
   respond_to do |format|
    if @answer.save     
    format.html { render :action => "create"}

    else 
        puts '*******************'
        format.html { redirect_to :action => "new",:id => @answer.question_id }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
        
      end   
   end
  end

  # PUT /answers/1
  # PUT /answers/1.xml
  def update
    @answer = Answer.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
       # format.html { redirect_to(@answer, :notice => 'Answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.xml
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to(answers_url) }
      format.xml  { head :ok }
    end
  end
end
