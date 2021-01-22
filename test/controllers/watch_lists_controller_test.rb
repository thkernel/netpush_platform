require 'test_helper'

class WatchListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watch_list = watch_lists(:one)
  end

  test "should get index" do
    get watch_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_watch_list_url
    assert_response :success
  end

  test "should create watch_list" do
    assert_difference('WatchList.count') do
      post watch_lists_url, params: { watch_list: { additional_information: @watch_list.additional_information, full_name: @watch_list.full_name, office: @watch_list.office, party_country: @watch_list.party_country, program_list: @watch_list.program_list, serial_number: @watch_list.serial_number, status: @watch_list.status, uid: @watch_list.uid, user_id: @watch_list.user_id, watchlist_populated_author: @watch_list.watchlist_populated_author } }
    end

    assert_redirected_to watch_list_url(WatchList.last)
  end

  test "should show watch_list" do
    get watch_list_url(@watch_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_watch_list_url(@watch_list)
    assert_response :success
  end

  test "should update watch_list" do
    patch watch_list_url(@watch_list), params: { watch_list: { additional_information: @watch_list.additional_information, full_name: @watch_list.full_name, office: @watch_list.office, party_country: @watch_list.party_country, program_list: @watch_list.program_list, serial_number: @watch_list.serial_number, status: @watch_list.status, uid: @watch_list.uid, user_id: @watch_list.user_id, watchlist_populated_author: @watch_list.watchlist_populated_author } }
    assert_redirected_to watch_list_url(@watch_list)
  end

  test "should destroy watch_list" do
    assert_difference('WatchList.count', -1) do
      delete watch_list_url(@watch_list)
    end

    assert_redirected_to watch_lists_url
  end
end
