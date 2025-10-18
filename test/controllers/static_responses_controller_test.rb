require "test_helper"

class StaticResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get static_responses_show_url
    assert_response :success
  end
end
