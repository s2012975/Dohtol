require 'test_helper'

class Admins::StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_stories_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_stories_show_url
    assert_response :success
  end

end
