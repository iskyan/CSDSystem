require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get contacts" do
    get about_contacts_url
    assert_response :success
  end

  test "should get system_information" do
    get about_system_information_url
    assert_response :success
  end

end
