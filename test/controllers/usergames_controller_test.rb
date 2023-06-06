require "test_helper"

class UsergamesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get usergames_create_url
    assert_response :success
  end

  test "should get show" do
    get usergames_show_url
    assert_response :success
  end

  test "should get update" do
    get usergames_update_url
    assert_response :success
  end
end
