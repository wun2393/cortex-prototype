require "test_helper"

class CortexQueriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cortex_queries_index_url
    assert_response :success
  end

  test "should get show" do
    get cortex_queries_show_url
    assert_response :success
  end
end
