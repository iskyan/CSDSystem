require 'test_helper'

class ProfessionalSkillListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_skill_list = professional_skill_lists(:one)
  end

  test "should get index" do
    get professional_skill_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_skill_list_url
    assert_response :success
  end

  test "should create professional_skill_list" do
    assert_difference('ProfessionalSkillList.count') do
      post professional_skill_lists_url, params: { professional_skill_list: { prof_skill: @professional_skill_list.prof_skill } }
    end

    assert_redirected_to professional_skill_list_url(ProfessionalSkillList.last)
  end

  test "should show professional_skill_list" do
    get professional_skill_list_url(@professional_skill_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_skill_list_url(@professional_skill_list)
    assert_response :success
  end

  test "should update professional_skill_list" do
    patch professional_skill_list_url(@professional_skill_list), params: { professional_skill_list: { prof_skill: @professional_skill_list.prof_skill } }
    assert_redirected_to professional_skill_list_url(@professional_skill_list)
  end

  test "should destroy professional_skill_list" do
    assert_difference('ProfessionalSkillList.count', -1) do
      delete professional_skill_list_url(@professional_skill_list)
    end

    assert_redirected_to professional_skill_lists_url
  end
end
