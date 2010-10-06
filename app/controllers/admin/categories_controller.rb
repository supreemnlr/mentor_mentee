class Admin::CategoriesController < ApplicationController
  # GET /admin/categories
  # GET /admin/categories.xml
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /admin/categories/1
  # GET /admin/categories/1.xml
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /admin/categories/new
  # GET /admin/categories/new.xml
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /admin/categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /admin/categories
  # POST /admin/categories.xml
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to([:admin,@category], :notice => 'Category was successfully created.') }
        format.xml  { render :xml => [:admin,@category], :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/categories/1
  # PUT /admin/categories/1.xml
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to([:admin,@category], :notice => 'Category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/categories/1
  # DELETE /admin/categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(admin_categories_url) }
      format.xml  { head :ok }
    end
  end
end