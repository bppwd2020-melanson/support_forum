require 'test_helper'

class Auth::ResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_responses_index_url
    assert_response :success
  end

  test "should get new" do
    get auth_responses_new_url
    assert_response :success
  end

end
