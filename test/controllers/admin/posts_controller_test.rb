require 'test_helper'

class Admin::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_posts_new_url
    assert_response :success
  end

  test "should get confirm" do
    get admin_posts_confirm_url
    assert_response :success
  end

  test "should get complete" do
    get admin_posts_complete_url
    assert_response :success
  end

end
