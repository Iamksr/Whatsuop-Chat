require "application_system_test_case"

class MychatsTest < ApplicationSystemTestCase
  setup do
    @mychat = mychats(:one)
  end

  test "visiting the index" do
    visit mychats_url
    assert_selector "h1", text: "Mychats"
  end

  test "creating a Mychat" do
    visit mychats_url
    click_on "New Mychat"

    fill_in "Message", with: @mychat.message
    fill_in "Username", with: @mychat.username
    click_on "Create Mychat"

    assert_text "Mychat was successfully created"
    click_on "Back"
  end

  test "updating a Mychat" do
    visit mychats_url
    click_on "Edit", match: :first

    fill_in "Message", with: @mychat.message
    fill_in "Username", with: @mychat.username
    click_on "Update Mychat"

    assert_text "Mychat was successfully updated"
    click_on "Back"
  end

  test "destroying a Mychat" do
    visit mychats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mychat was successfully destroyed"
  end
end
