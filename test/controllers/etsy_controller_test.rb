require 'test_helper'

class EtsyControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get etsy_search_url
    assert_response :success
  end

end
