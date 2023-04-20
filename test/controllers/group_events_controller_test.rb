require "test_helper"

class GroupEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get group_events_show_url
    assert_response :success
  end

  test "should get new" do
    get group_events_new_url
    assert_response :success
  end
end
