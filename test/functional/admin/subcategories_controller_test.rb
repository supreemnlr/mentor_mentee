require 'test_helper'

class Admin::SubcategoriesControllerTest < ActionController::TestCase
  setup do
    @admin_subcategory = admin_subcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_subcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_subcategory" do
    assert_difference('Admin::Subcategory.count') do
      post :create, :admin_subcategory => @admin_subcategory.attributes
    end

    assert_redirected_to admin_subcategory_path(assigns(:admin_subcategory))
  end

  test "should show admin_subcategory" do
    get :show, :id => @admin_subcategory.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_subcategory.to_param
    assert_response :success
  end

  test "should update admin_subcategory" do
    put :update, :id => @admin_subcategory.to_param, :admin_subcategory => @admin_subcategory.attributes
    assert_redirected_to admin_subcategory_path(assigns(:admin_subcategory))
  end

  test "should destroy admin_subcategory" do
    assert_difference('Admin::Subcategory.count', -1) do
      delete :destroy, :id => @admin_subcategory.to_param
    end

    assert_redirected_to admin_subcategories_path
  end
end
