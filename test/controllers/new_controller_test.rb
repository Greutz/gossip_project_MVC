require 'test_helper'

class NewControllerTest < ActionDispatch::IntegrationTest
  test "should get new_gossip" do
    get new_new_gossip_url
    assert_response :success
  end

end
