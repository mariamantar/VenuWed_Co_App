require "application_system_test_case"

class GuestListsTest < ApplicationSystemTestCase
  setup do
    @guest_list = guest_lists(:one)
  end

  test "visiting the index" do
    visit guest_lists_url
    assert_selector "h1", text: "Guest Lists"
  end

  test "creating a Guest list" do
    visit guest_lists_url
    click_on "New Guest List"

    fill_in "Address", with: @guest_list.address
    fill_in "Customer", with: @guest_list.customer_id
    fill_in "First Name", with: @guest_list.first_name
    fill_in "Last Name", with: @guest_list.last_name
    fill_in "Phone", with: @guest_list.phone
    fill_in "Rsvp", with: @guest_list.rsvp
    click_on "Create Guest list"

    assert_text "Guest list was successfully created"
    click_on "Back"
  end

  test "updating a Guest list" do
    visit guest_lists_url
    click_on "Edit", match: :first

    fill_in "Address", with: @guest_list.address
    fill_in "Customer", with: @guest_list.customer_id
    fill_in "First Name", with: @guest_list.first_name
    fill_in "Last Name", with: @guest_list.last_name
    fill_in "Phone", with: @guest_list.phone
    fill_in "Rsvp", with: @guest_list.rsvp
    click_on "Update Guest list"

    assert_text "Guest list was successfully updated"
    click_on "Back"
  end

  test "destroying a Guest list" do
    visit guest_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guest list was successfully destroyed"
  end
end
