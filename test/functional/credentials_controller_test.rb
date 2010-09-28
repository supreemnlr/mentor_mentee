require 'test_helper'

class CredentialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
