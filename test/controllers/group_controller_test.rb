require "test_helper"

class GroupControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get group_new_url
    assert_response :success
  end

  test "should get index" do
    get group_index_url
    assert_response :success
  end

  test "should get edit" do
    get group_edit_url
    assert_response :success
  end
end
