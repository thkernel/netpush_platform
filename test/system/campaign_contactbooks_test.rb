require "application_system_test_case"

class CampaignContactbooksTest < ApplicationSystemTestCase
  setup do
    @campaign_contactbook = campaign_contactbooks(:one)
  end

  test "visiting the index" do
    visit campaign_contactbooks_url
    assert_selector "h1", text: "Campaign Contactbooks"
  end

  test "creating a Campaign contactbook" do
    visit campaign_contactbooks_url
    click_on "New Campaign Contactbook"

    fill_in "Campaign", with: @campaign_contactbook.campaign_id
    fill_in "Contact book", with: @campaign_contactbook.contact_book_id
    fill_in "Status", with: @campaign_contactbook.status
    fill_in "User", with: @campaign_contactbook.user_id
    fill_in "Uuid", with: @campaign_contactbook.uuid
    click_on "Create Campaign contactbook"

    assert_text "Campaign contactbook was successfully created"
    click_on "Back"
  end

  test "updating a Campaign contactbook" do
    visit campaign_contactbooks_url
    click_on "Edit", match: :first

    fill_in "Campaign", with: @campaign_contactbook.campaign_id
    fill_in "Contact book", with: @campaign_contactbook.contact_book_id
    fill_in "Status", with: @campaign_contactbook.status
    fill_in "User", with: @campaign_contactbook.user_id
    fill_in "Uuid", with: @campaign_contactbook.uuid
    click_on "Update Campaign contactbook"

    assert_text "Campaign contactbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Campaign contactbook" do
    visit campaign_contactbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campaign contactbook was successfully destroyed"
  end
end
