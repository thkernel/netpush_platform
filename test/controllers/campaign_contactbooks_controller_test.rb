require 'test_helper'

class CampaignContactbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_contactbook = campaign_contactbooks(:one)
  end

  test "should get index" do
    get campaign_contactbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_contactbook_url
    assert_response :success
  end

  test "should create campaign_contactbook" do
    assert_difference('CampaignContactbook.count') do
      post campaign_contactbooks_url, params: { campaign_contactbook: { campaign_id: @campaign_contactbook.campaign_id, contact_book_id: @campaign_contactbook.contact_book_id, status: @campaign_contactbook.status, user_id: @campaign_contactbook.user_id, uuid: @campaign_contactbook.uuid } }
    end

    assert_redirected_to campaign_contactbook_url(CampaignContactbook.last)
  end

  test "should show campaign_contactbook" do
    get campaign_contactbook_url(@campaign_contactbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_contactbook_url(@campaign_contactbook)
    assert_response :success
  end

  test "should update campaign_contactbook" do
    patch campaign_contactbook_url(@campaign_contactbook), params: { campaign_contactbook: { campaign_id: @campaign_contactbook.campaign_id, contact_book_id: @campaign_contactbook.contact_book_id, status: @campaign_contactbook.status, user_id: @campaign_contactbook.user_id, uuid: @campaign_contactbook.uuid } }
    assert_redirected_to campaign_contactbook_url(@campaign_contactbook)
  end

  test "should destroy campaign_contactbook" do
    assert_difference('CampaignContactbook.count', -1) do
      delete campaign_contactbook_url(@campaign_contactbook)
    end

    assert_redirected_to campaign_contactbooks_url
  end
end
