require 'test_helper'

class Customers::PostCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get customers_post_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get customers_post_comments_destroy_url
    assert_response :success
  end

end
