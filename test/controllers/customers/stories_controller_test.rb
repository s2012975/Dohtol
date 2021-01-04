require 'test_helper'

class Customers::StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_stories_index_url
    assert_response :success
  end

  test "should get show" do
    get customers_stories_show_url
    assert_response :success
  end

  test "should get edit" do
    get customers_stories_edit_url
    assert_response :success
  end

  test "should get new" do
    get customers_stories_new_url
    assert_response :success
  end

end
