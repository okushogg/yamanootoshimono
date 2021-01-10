require 'test_helper'

class ItemGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get item_genres_index_url
    assert_response :success
  end

  test "should get show" do
    get item_genres_show_url
    assert_response :success
  end

  test "should get edit" do
    get item_genres_edit_url
    assert_response :success
  end

end
