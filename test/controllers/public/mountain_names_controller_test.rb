require 'test_helper'

class Public::MountainNamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_mountain_names_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_mountain_names_edit_url
    assert_response :success
  end

end
