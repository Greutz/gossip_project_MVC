require 'test_helper'

class UserPageControllerTest < ActionDispatch::IntegrationTest
  test "should get user_page" do
    get user_page_user_page_url
    assert_response :success
  end

end
