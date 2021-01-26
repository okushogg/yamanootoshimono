require 'test_helper'

class ItemGenreControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get item_genre_index_url
    assert_response :success
  end

  test 'should get show' do
    get item_genre_show_url
    assert_response :success
  end
end
