require "test_helper"

class GameqcmsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gameqcms_create_url
    assert_response :success
  end
end
