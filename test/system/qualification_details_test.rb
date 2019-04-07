require "application_system_test_case"

class QualificationDetailsTest < ApplicationSystemTestCase
  setup do
    @qualification_detail = qualification_details(:one)
  end

  test "visiting the index" do
    visit qualification_details_url
    assert_selector "h1", text: "Qualification Details"
  end

  test "creating a Qualification detail" do
    visit qualification_details_url
    click_on "New Qualification Detail"

    fill_in "Duration", with: @qualification_detail.duration
    fill_in "Personal detail", with: @qualification_detail.personal_detail_id
    fill_in "Qualification", with: @qualification_detail.qualification
    fill_in "Sch col uni", with: @qualification_detail.sch_col_uni
    fill_in "Sub disc", with: @qualification_detail.sub_disc
    fill_in "Year", with: @qualification_detail.year
    click_on "Create Qualification detail"

    assert_text "Qualification detail was successfully created"
    click_on "Back"
  end

  test "updating a Qualification detail" do
    visit qualification_details_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @qualification_detail.duration
    fill_in "Personal detail", with: @qualification_detail.personal_detail_id
    fill_in "Qualification", with: @qualification_detail.qualification
    fill_in "Sch col uni", with: @qualification_detail.sch_col_uni
    fill_in "Sub disc", with: @qualification_detail.sub_disc
    fill_in "Year", with: @qualification_detail.year
    click_on "Update Qualification detail"

    assert_text "Qualification detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Qualification detail" do
    visit qualification_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qualification detail was successfully destroyed"
  end
end
