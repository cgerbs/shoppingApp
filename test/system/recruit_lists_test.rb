require "application_system_test_case"

class RecruitListsTest < ApplicationSystemTestCase
  setup do
    @recruit_list = recruit_lists(:one)
  end

  test "visiting the index" do
    visit recruit_lists_url
    assert_selector "h1", text: "Recruit Lists"
  end

  test "creating a Recruit list" do
    visit recruit_lists_url
    click_on "New Recruit List"

    click_on "Create Recruit list"

    assert_text "Recruit list was successfully created"
    click_on "Back"
  end

  test "updating a Recruit list" do
    visit recruit_lists_url
    click_on "Edit", match: :first

    click_on "Update Recruit list"

    assert_text "Recruit list was successfully updated"
    click_on "Back"
  end

  test "destroying a Recruit list" do
    visit recruit_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recruit list was successfully destroyed"
  end
end
