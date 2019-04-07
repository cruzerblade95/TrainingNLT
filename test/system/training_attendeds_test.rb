require "application_system_test_case"

class TrainingAttendedsTest < ApplicationSystemTestCase
  setup do
    @training_attended = training_attendeds(:one)
  end

  test "visiting the index" do
    visit training_attendeds_url
    assert_selector "h1", text: "Training Attendeds"
  end

  test "creating a Training attended" do
    visit training_attendeds_url
    click_on "New Training Attended"

    fill_in "Duration training", with: @training_attended.duration_training
    fill_in "Personal detail", with: @training_attended.personal_detail_id
    fill_in "Status", with: @training_attended.status
    fill_in "Training", with: @training_attended.training
    fill_in "Training institute", with: @training_attended.training_institute
    fill_in "Training place", with: @training_attended.training_place
    click_on "Create Training attended"

    assert_text "Training attended was successfully created"
    click_on "Back"
  end

  test "updating a Training attended" do
    visit training_attendeds_url
    click_on "Edit", match: :first

    fill_in "Duration training", with: @training_attended.duration_training
    fill_in "Personal detail", with: @training_attended.personal_detail_id
    fill_in "Status", with: @training_attended.status
    fill_in "Training", with: @training_attended.training
    fill_in "Training institute", with: @training_attended.training_institute
    fill_in "Training place", with: @training_attended.training_place
    click_on "Update Training attended"

    assert_text "Training attended was successfully updated"
    click_on "Back"
  end

  test "destroying a Training attended" do
    visit training_attendeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training attended was successfully destroyed"
  end
end
