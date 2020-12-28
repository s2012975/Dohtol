require 'test_helper'

class Admins::QualificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admins_qualifications_edit_url
    assert_response :success
  end

  test "should get new" do
    get admins_qualifications_new_url
    assert_response :success
  end

end
