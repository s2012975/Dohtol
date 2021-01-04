require 'test_helper'

class Customers::QualificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_qualifications_index_url
    assert_response :success
  end

  test "should get show" do
    get customers_qualifications_show_url
    assert_response :success
  end

end
