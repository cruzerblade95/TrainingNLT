require 'test_helper'

class WorkingExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_experience = working_experiences(:one)
  end

  test "should get index" do
    get working_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_working_experience_url
    assert_response :success
  end

  test "should create working_experience" do
    assert_difference('WorkingExperience.count') do
      post working_experiences_url, params: { working_experience: { company_name: @working_experience.company_name, designation: @working_experience.designation, duration: @working_experience.duration, personal_detail_id: @working_experience.personal_detail_id, reason_leaving: @working_experience.reason_leaving, year: @working_experience.year } }
    end

    assert_redirected_to working_experience_url(WorkingExperience.last)
  end

  test "should show working_experience" do
    get working_experience_url(@working_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_experience_url(@working_experience)
    assert_response :success
  end

  test "should update working_experience" do
    patch working_experience_url(@working_experience), params: { working_experience: { company_name: @working_experience.company_name, designation: @working_experience.designation, duration: @working_experience.duration, personal_detail_id: @working_experience.personal_detail_id, reason_leaving: @working_experience.reason_leaving, year: @working_experience.year } }
    assert_redirected_to working_experience_url(@working_experience)
  end

  test "should destroy working_experience" do
    assert_difference('WorkingExperience.count', -1) do
      delete working_experience_url(@working_experience)
    end

    assert_redirected_to working_experiences_url
  end
end
