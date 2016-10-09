require 'test_helper'

class Users::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_dashboard" do
    get users_dashboard_admin_dashboard_url
    assert_response :success
  end

end
