require 'test_helper'

class ProfessionalSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_skill = professional_skills(:one)
  end

  test "should get index" do
    get professional_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_skill_url
    assert_response :success
  end

  test "should create professional_skill" do
    assert_difference('ProfessionalSkill.count') do
      post professional_skills_url, params: { professional_skill: { professional_skill_list_id: @professional_skill.professional_skill_list_id, profile_id: @professional_skill.profile_id, skill_level_id: @professional_skill.skill_level_id } }
    end

    assert_redirected_to professional_skill_url(ProfessionalSkill.last)
  end

  test "should show professional_skill" do
    get professional_skill_url(@professional_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_skill_url(@professional_skill)
    assert_response :success
  end

  test "should update professional_skill" do
    patch professional_skill_url(@professional_skill), params: { professional_skill: { professional_skill_list_id: @professional_skill.professional_skill_list_id, profile_id: @professional_skill.profile_id, skill_level_id: @professional_skill.skill_level_id } }
    assert_redirected_to professional_skill_url(@professional_skill)
  end

  test "should destroy professional_skill" do
    assert_difference('ProfessionalSkill.count', -1) do
      delete professional_skill_url(@professional_skill)
    end

    assert_redirected_to professional_skills_url
  end
end
