require 'test_helper'

class RecruitListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recruit_list = recruit_lists(:one)
  end

  test "should get index" do
    get recruit_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_recruit_list_url
    assert_response :success
  end

  test "should create recruit_list" do
    assert_difference('RecruitList.count') do
      post recruit_lists_url, params: { recruit_list: {  } }
    end

    assert_redirected_to recruit_list_url(RecruitList.last)
  end

  test "should show recruit_list" do
    get recruit_list_url(@recruit_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_recruit_list_url(@recruit_list)
    assert_response :success
  end

  test "should update recruit_list" do
    patch recruit_list_url(@recruit_list), params: { recruit_list: {  } }
    assert_redirected_to recruit_list_url(@recruit_list)
  end

  test "should destroy recruit_list" do
    assert_difference('RecruitList.count', -1) do
      delete recruit_list_url(@recruit_list)
    end

    assert_redirected_to recruit_lists_url
  end
end
