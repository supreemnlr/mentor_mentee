require 'test_helper'

class Admin::CategoriesControllerTest < ActionController::TestCase
  setup do
    @admin_category = admin_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_category" do
    assert_difference('Admin::Category.count') do
      post :create, :admin_category => @admin_category.attributes
    end

    assert_redirected_to admin_category_path(assigns(:admin_category))
  end

  test "should show admin_category" do
    get :show, :id => @admin_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_category.to_param
    assert_response :success
  end

  test "should update admin_category" do
    put :update, :id => @admin_category.to_param, :admin_category => @admin_category.attributes
    assert_redirected_to admin_category_path(assigns(:admin_category))
  end

  test "should destroy admin_category" do
    assert_difference('Admin::Category.count', -1) do
      delete :destroy, :id => @admin_category.to_param
    end

    assert_redirected_to admin_categories_path
  end
end
