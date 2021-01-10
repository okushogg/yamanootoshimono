require 'test_helper'

class Admin::MountainNamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_mountain_names_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_mountain_names_edit_url
    assert_response :success
  end

end
