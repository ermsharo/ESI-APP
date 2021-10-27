require "test_helper"

class IngredientesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingredientes_index_url
    assert_response :success
  end

  test "should get show" do
    get ingredientes_show_url
    assert_response :success
  end

  test "should get new" do
    get ingredientes_new_url
    assert_response :success
  end

  test "should get edit" do
    get ingredientes_edit_url
    assert_response :success
  end
end
