require "application_system_test_case"

class RelativesTest < ApplicationSystemTestCase
  setup do
    @relative = relatives(:one)
  end

  test "visiting the index" do
    visit relatives_url
    assert_selector "h1", text: "Relatives"
  end

  test "creating a Relative" do
    visit relatives_url
    click_on "New Relative"

    fill_in "Personal detail", with: @relative.personal_detail_id
    fill_in "Relative hp no", with: @relative.relative_hp_no
    fill_in "Relative name", with: @relative.relative_name
    fill_in "Relative nric", with: @relative.relative_nric
    fill_in "Relative perm address", with: @relative.relative_perm_address
    fill_in "Relative postcode", with: @relative.relative_postcode
    fill_in "Relative relationship", with: @relative.relative_relationship
    fill_in "Relative tel no", with: @relative.relative_tel_no
    click_on "Create Relative"

    assert_text "Relative was successfully created"
    click_on "Back"
  end

  test "updating a Relative" do
    visit relatives_url
    click_on "Edit", match: :first

    fill_in "Personal detail", with: @relative.personal_detail_id
    fill_in "Relative hp no", with: @relative.relative_hp_no
    fill_in "Relative name", with: @relative.relative_name
    fill_in "Relative nric", with: @relative.relative_nric
    fill_in "Relative perm address", with: @relative.relative_perm_address
    fill_in "Relative postcode", with: @relative.relative_postcode
    fill_in "Relative relationship", with: @relative.relative_relationship
    fill_in "Relative tel no", with: @relative.relative_tel_no
    click_on "Update Relative"

    assert_text "Relative was successfully updated"
    click_on "Back"
  end

  test "destroying a Relative" do
    visit relatives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relative was successfully destroyed"
  end
end
