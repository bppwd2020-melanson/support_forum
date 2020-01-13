require 'test_helper'

class Auth::QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_questions_index_url
    assert_response :success
  end

  test "should get new" do
    get auth_questions_new_url
    assert_response :success
  end

end
