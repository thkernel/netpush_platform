require 'test_helper'

class IdentityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identity_type = identity_types(:one)
  end

  test "should get index" do
    get identity_types_url
    assert_response :success
  end

  test "should get new" do
    get new_identity_type_url
    assert_response :success
  end

  test "should create identity_type" do
    assert_difference('IdentityType.count') do
      post identity_types_url, params: { identity_type: { description: @identity_type.description, name: @identity_type.name, status: @identity_type.status, uid: @identity_type.uid, user_id: @identity_type.user_id } }
    end

    assert_redirected_to identity_type_url(IdentityType.last)
  end

  test "should show identity_type" do
    get identity_type_url(@identity_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_identity_type_url(@identity_type)
    assert_response :success
  end

  test "should update identity_type" do
    patch identity_type_url(@identity_type), params: { identity_type: { description: @identity_type.description, name: @identity_type.name, status: @identity_type.status, uid: @identity_type.uid, user_id: @identity_type.user_id } }
    assert_redirected_to identity_type_url(@identity_type)
  end

  test "should destroy identity_type" do
    assert_difference('IdentityType.count', -1) do
      delete identity_type_url(@identity_type)
    end

    assert_redirected_to identity_types_url
  end
end
