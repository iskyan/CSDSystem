require 'test_helper'

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill = skills(:one)
  end

  test "should get index" do
    get skills_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_url
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
<<<<<<< HEAD
      post skills_url, params: { skill: { organizational_skill: @skill.organizational_skill, profile_id: @skill.profile_id, project: @skill.project, publicaton: @skill.publicaton } }
=======
      post skills_url, params: { skill: {  } }
>>>>>>> master
    end

    assert_redirected_to skill_url(Skill.last)
  end

  test "should show skill" do
    get skill_url(@skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_url(@skill)
    assert_response :success
  end

  test "should update skill" do
<<<<<<< HEAD
    patch skill_url(@skill), params: { skill: { organizational_skill: @skill.organizational_skill, profile_id: @skill.profile_id, project: @skill.project, publicaton: @skill.publicaton } }
=======
    patch skill_url(@skill), params: { skill: {  } }
>>>>>>> master
    assert_redirected_to skill_url(@skill)
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete skill_url(@skill)
    end

    assert_redirected_to skills_url
  end
end
