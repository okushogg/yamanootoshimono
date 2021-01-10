require 'test_helper'

class Public::PrefectureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_prefecture_index_url
    assert_response :success
  end

  test "should get show" do
    get public_prefecture_show_url
    assert_response :success
  end

end
