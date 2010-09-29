class Admin::SubcategoriesController < ApplicationController
  # GET /admin/subcategories
  # GET /admin/subcategories.xml
  def index
    @subcategories = Subcategory.all
     respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subcategories }
    end
  end

  # GET /admin/subcategories/1
  # GET /admin/subcategories/1.xml
  def show
    @subcategory = Subcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subcategory }
    end
  end

  # GET /admin/subcategories/new
  # GET /admin/subcategories/new.xml
  def new
    @subcategory = Subcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subcategory }
    end
  end

  # GET /admin/subcategories/1/edit
  def edit
    @subcategory = Subcategory.find(params[:id])
  end

  # POST /admin/subcategories
  # POST /admin/subcategories.xml
  def create
    @subcategory = Subcategory.new(params[:subcategory])

    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to([:admin,@subcategory], :notice => 'Subcategory was successfully created.') }
        format.xml  { render :xml => @subcategory, :status => :created, :location => @subcategory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/subcategories/1
  # PUT /admin/subcategories/1.xml
  def update
    @subcategory = Subcategory.find(params[:id])

    respond_to do |format|
      if @subcategory.update_attributes(params[:subcategory])
        format.html { redirect_to([:admin,@subcategory], :notice => 'Subcategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/subcategories/1
  # DELETE /admin/subcategories/1.xml
  def destroy
    @subcategory = Subcategory.find(params[:id])
    @subcategory.destroy

    respond_to do |format|
      format.html { redirect_to(admin_subcategories_url) }
      format.xml  { head :ok }
    end
  end
end
