require 'test_helper'

class Auth::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_dashboard_index_url
    assert_response :success
  end

end
