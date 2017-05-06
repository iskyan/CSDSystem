require 'test_helper'

class ProfileRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_role = profile_roles(:one)
  end

  test "should get index" do
    get profile_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_role_url
    assert_response :success
  end

  test "should create profile_role" do
    assert_difference('ProfileRole.count') do
<<<<<<< HEAD
      post profile_roles_url, params: { profile_role: { role: @profile_role.role } }
=======
      post profile_roles_url, params: { profile_role: {  } }
>>>>>>> master
    end

    assert_redirected_to profile_role_url(ProfileRole.last)
  end

  test "should show profile_role" do
    get profile_role_url(@profile_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_role_url(@profile_role)
    assert_response :success
  end

  test "should update profile_role" do
<<<<<<< HEAD
    patch profile_role_url(@profile_role), params: { profile_role: { role: @profile_role.role } }
=======
    patch profile_role_url(@profile_role), params: { profile_role: {  } }
>>>>>>> master
    assert_redirected_to profile_role_url(@profile_role)
  end

  test "should destroy profile_role" do
    assert_difference('ProfileRole.count', -1) do
      delete profile_role_url(@profile_role)
    end

    assert_redirected_to profile_roles_url
  end
end
