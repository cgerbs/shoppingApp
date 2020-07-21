require 'test_helper'

class RecruiterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recruiter_index_url
    assert_response :success
  end

end
