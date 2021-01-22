require "application_system_test_case"

class WatchListsTest < ApplicationSystemTestCase
  setup do
    @watch_list = watch_lists(:one)
  end

  test "visiting the index" do
    visit watch_lists_url
    assert_selector "h1", text: "Watch Lists"
  end

  test "creating a Watch list" do
    visit watch_lists_url
    click_on "New Watch List"

    fill_in "Additional information", with: @watch_list.additional_information
    fill_in "Full name", with: @watch_list.full_name
    fill_in "Office", with: @watch_list.office
    fill_in "Party country", with: @watch_list.party_country
    fill_in "Program list", with: @watch_list.program_list
    fill_in "Serial number", with: @watch_list.serial_number
    fill_in "Status", with: @watch_list.status
    fill_in "Uid", with: @watch_list.uid
    fill_in "User", with: @watch_list.user_id
    fill_in "Watchlist populated author", with: @watch_list.watchlist_populated_author
    click_on "Create Watch list"

    assert_text "Watch list was successfully created"
    click_on "Back"
  end

  test "updating a Watch list" do
    visit watch_lists_url
    click_on "Edit", match: :first

    fill_in "Additional information", with: @watch_list.additional_information
    fill_in "Full name", with: @watch_list.full_name
    fill_in "Office", with: @watch_list.office
    fill_in "Party country", with: @watch_list.party_country
    fill_in "Program list", with: @watch_list.program_list
    fill_in "Serial number", with: @watch_list.serial_number
    fill_in "Status", with: @watch_list.status
    fill_in "Uid", with: @watch_list.uid
    fill_in "User", with: @watch_list.user_id
    fill_in "Watchlist populated author", with: @watch_list.watchlist_populated_author
    click_on "Update Watch list"

    assert_text "Watch list was successfully updated"
    click_on "Back"
  end

  test "destroying a Watch list" do
    visit watch_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watch list was successfully destroyed"
  end
end
