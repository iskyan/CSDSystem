require 'test_helper'

class AcademicsControllerTest < ActionDispatch::IntegrationTest
  test "should get calendar" do
    get academics_calendar_url
    assert_response :success
  end

  test "should get courses" do
    get academics_courses_url
    assert_response :success
  end

  test "should get graduate_program" do
    get academics_graduate_program_url
    assert_response :success
  end

  test "should get program_objectives" do
    get academics_program_objectives_url
    assert_response :success
  end

  test "should get undergraduate_program" do
    get academics_undergraduate_program_url
    assert_response :success
  end

end
