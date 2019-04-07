require "application_system_test_case"

class WorkingExperiencesTest < ApplicationSystemTestCase
  setup do
    @working_experience = working_experiences(:one)
  end

  test "visiting the index" do
    visit working_experiences_url
    assert_selector "h1", text: "Working Experiences"
  end

  test "creating a Working experience" do
    visit working_experiences_url
    click_on "New Working Experience"

    fill_in "Company name", with: @working_experience.company_name
    fill_in "Designation", with: @working_experience.designation
    fill_in "Duration", with: @working_experience.duration
    fill_in "Personal detail", with: @working_experience.personal_detail_id
    fill_in "Reason leaving", with: @working_experience.reason_leaving
    fill_in "Year", with: @working_experience.year
    click_on "Create Working experience"

    assert_text "Working experience was successfully created"
    click_on "Back"
  end

  test "updating a Working experience" do
    visit working_experiences_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @working_experience.company_name
    fill_in "Designation", with: @working_experience.designation
    fill_in "Duration", with: @working_experience.duration
    fill_in "Personal detail", with: @working_experience.personal_detail_id
    fill_in "Reason leaving", with: @working_experience.reason_leaving
    fill_in "Year", with: @working_experience.year
    click_on "Update Working experience"

    assert_text "Working experience was successfully updated"
    click_on "Back"
  end

  test "destroying a Working experience" do
    visit working_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Working experience was successfully destroyed"
  end
end
