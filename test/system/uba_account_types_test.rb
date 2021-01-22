require "application_system_test_case"

class UbaAccountTypesTest < ApplicationSystemTestCase
  setup do
    @uba_account_type = uba_account_types(:one)
  end

  test "visiting the index" do
    visit uba_account_types_url
    assert_selector "h1", text: "Uba Account Types"
  end

  test "creating a Uba account type" do
    visit uba_account_types_url
    click_on "New Uba Account Type"

    fill_in "Description", with: @uba_account_type.description
    fill_in "Name", with: @uba_account_type.name
    fill_in "Status", with: @uba_account_type.status
    fill_in "Uid", with: @uba_account_type.uid
    fill_in "User", with: @uba_account_type.user_id
    click_on "Create Uba account type"

    assert_text "Uba account type was successfully created"
    click_on "Back"
  end

  test "updating a Uba account type" do
    visit uba_account_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @uba_account_type.description
    fill_in "Name", with: @uba_account_type.name
    fill_in "Status", with: @uba_account_type.status
    fill_in "Uid", with: @uba_account_type.uid
    fill_in "User", with: @uba_account_type.user_id
    click_on "Update Uba account type"

    assert_text "Uba account type was successfully updated"
    click_on "Back"
  end

  test "destroying a Uba account type" do
    visit uba_account_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uba account type was successfully destroyed"
  end
end
