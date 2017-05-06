require 'test_helper'

class NewsEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get announcements" do
    get news_events_announcements_url
    assert_response :success
  end

  test "should get calendars_colloquia" do
    get news_events_calendars_colloquia_url
    assert_response :success
  end

  test "should get for_media" do
    get news_events_for_media_url
    assert_response :success
  end

end
