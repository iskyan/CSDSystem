require 'test_helper'

class ComputerSkillListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computer_skill_list = computer_skill_lists(:one)
  end

  test "should get index" do
    get computer_skill_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_computer_skill_list_url
    assert_response :success
  end

  test "should create computer_skill_list" do
    assert_difference('ComputerSkillList.count') do
      post computer_skill_lists_url, params: { computer_skill_list: { comp_skill: @computer_skill_list.comp_skill } }
    end

    assert_redirected_to computer_skill_list_url(ComputerSkillList.last)
  end

  test "should show computer_skill_list" do
    get computer_skill_list_url(@computer_skill_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_computer_skill_list_url(@computer_skill_list)
    assert_response :success
  end

  test "should update computer_skill_list" do
    patch computer_skill_list_url(@computer_skill_list), params: { computer_skill_list: { comp_skill: @computer_skill_list.comp_skill } }
    assert_redirected_to computer_skill_list_url(@computer_skill_list)
  end

  test "should destroy computer_skill_list" do
    assert_difference('ComputerSkillList.count', -1) do
      delete computer_skill_list_url(@computer_skill_list)
    end

    assert_redirected_to computer_skill_lists_url
  end
end
