require 'test_helper'

class DropsControllerTest < ActionDispatch::IntegrationTest
  test "should get phase1" do
    get drops_phase1_url
    assert_response :success
  end

  test "should get phase2" do
    get drops_phase2_url
    assert_response :success
  end

  test "should get phase3" do
    get drops_phase3_url
    assert_response :success
  end

  test "should get phase4" do
    get drops_phase4_url
    assert_response :success
  end

  test "should get result" do
    get drops_result_url
    assert_response :success
  end

end
