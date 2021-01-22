require 'test_helper'

class UbaAccountTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uba_account_type = uba_account_types(:one)
  end

  test "should get index" do
    get uba_account_types_url
    assert_response :success
  end

  test "should get new" do
    get new_uba_account_type_url
    assert_response :success
  end

  test "should create uba_account_type" do
    assert_difference('UbaAccountType.count') do
      post uba_account_types_url, params: { uba_account_type: { description: @uba_account_type.description, name: @uba_account_type.name, status: @uba_account_type.status, uid: @uba_account_type.uid, user_id: @uba_account_type.user_id } }
    end

    assert_redirected_to uba_account_type_url(UbaAccountType.last)
  end

  test "should show uba_account_type" do
    get uba_account_type_url(@uba_account_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_uba_account_type_url(@uba_account_type)
    assert_response :success
  end

  test "should update uba_account_type" do
    patch uba_account_type_url(@uba_account_type), params: { uba_account_type: { description: @uba_account_type.description, name: @uba_account_type.name, status: @uba_account_type.status, uid: @uba_account_type.uid, user_id: @uba_account_type.user_id } }
    assert_redirected_to uba_account_type_url(@uba_account_type)
  end

  test "should destroy uba_account_type" do
    assert_difference('UbaAccountType.count', -1) do
      delete uba_account_type_url(@uba_account_type)
    end

    assert_redirected_to uba_account_types_url
  end
end
