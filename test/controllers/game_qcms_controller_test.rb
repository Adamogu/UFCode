require "test_helper"

class GameQcmsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get game_qcms_create_url
    assert_response :success
  end
end
