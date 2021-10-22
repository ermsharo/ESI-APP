require "test_helper"

class NewrecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newrecipe_index_url
    assert_response :success
  end
end
