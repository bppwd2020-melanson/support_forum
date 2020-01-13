require 'test_helper'

class Auth::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_users_index_url
    assert_response :success
  end

end
