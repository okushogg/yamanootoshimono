require 'test_helper'

class Pulic::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get pulic_home_top_url
    assert_response :success
  end

  test "should get about" do
    get pulic_home_about_url
    assert_response :success
  end

end
