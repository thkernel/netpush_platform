require "application_system_test_case"

class IdentityTypesTest < ApplicationSystemTestCase
  setup do
    @identity_type = identity_types(:one)
  end

  test "visiting the index" do
    visit identity_types_url
    assert_selector "h1", text: "Identity Types"
  end

  test "creating a Identity type" do
    visit identity_types_url
    click_on "New Identity Type"

    fill_in "Description", with: @identity_type.description
    fill_in "Name", with: @identity_type.name
    fill_in "Status", with: @identity_type.status
    fill_in "Uid", with: @identity_type.uid
    fill_in "User", with: @identity_type.user_id
    click_on "Create Identity type"

    assert_text "Identity type was successfully created"
    click_on "Back"
  end

  test "updating a Identity type" do
    visit identity_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @identity_type.description
    fill_in "Name", with: @identity_type.name
    fill_in "Status", with: @identity_type.status
    fill_in "Uid", with: @identity_type.uid
    fill_in "User", with: @identity_type.user_id
    click_on "Update Identity type"

    assert_text "Identity type was successfully updated"
    click_on "Back"
  end

  test "destroying a Identity type" do
    visit identity_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Identity type was successfully destroyed"
  end
end
