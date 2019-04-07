require "application_system_test_case"

class HonorsAndAwardsTest < ApplicationSystemTestCase
  setup do
    @honors_and_award = honors_and_awards(:one)
  end

  test "visiting the index" do
    visit honors_and_awards_url
    assert_selector "h1", text: "Honors And Awards"
  end

  test "creating a Honors and award" do
    visit honors_and_awards_url
    click_on "New Honors And Award"

    fill_in "Date received", with: @honors_and_award.date_received
    fill_in "Grantor", with: @honors_and_award.grantor
    fill_in "Honor or award", with: @honors_and_award.honor_or_award
    fill_in "Personal detail", with: @honors_and_award.personal_detail_id
    click_on "Create Honors and award"

    assert_text "Honors and award was successfully created"
    click_on "Back"
  end

  test "updating a Honors and award" do
    visit honors_and_awards_url
    click_on "Edit", match: :first

    fill_in "Date received", with: @honors_and_award.date_received
    fill_in "Grantor", with: @honors_and_award.grantor
    fill_in "Honor or award", with: @honors_and_award.honor_or_award
    fill_in "Personal detail", with: @honors_and_award.personal_detail_id
    click_on "Update Honors and award"

    assert_text "Honors and award was successfully updated"
    click_on "Back"
  end

  test "destroying a Honors and award" do
    visit honors_and_awards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Honors and award was successfully destroyed"
  end
end
