require 'test_helper'

class MentorCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mentor_courses_index_url
    assert_response :success
  end

end
