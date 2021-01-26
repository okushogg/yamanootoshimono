require 'test_helper'

class PickUpControllerTest < ActionDispatch::IntegrationTest
  test 'should get step1' do
    get pick_up_step1_url
    assert_response :success
  end

  test 'should get step2' do
    get pick_up_step2_url
    assert_response :success
  end

  test 'should get step3' do
    get pick_up_step3_url
    assert_response :success
  end

  test 'should get step4' do
    get pick_up_step4_url
    assert_response :success
  end

  test 'should get complete' do
    get pick_up_complete_url
    assert_response :success
  end
end
