require "application_system_test_case"

class PersonalDetailsTest < ApplicationSystemTestCase
  setup do
    @personal_detail = personal_details(:one)
  end

  test "visiting the index" do
    visit personal_details_url
    assert_selector "h1", text: "Personal Details"
  end

  test "creating a Personal detail" do
    visit personal_details_url
    click_on "New Personal Detail"

    fill_in "Staff corr address", with: @personal_detail.staff_corr_address
    fill_in "Staff dob", with: @personal_detail.staff_dob
    fill_in "Staff employ type", with: @personal_detail.staff_employ_type
    fill_in "Staff hp no", with: @personal_detail.staff_hp_no
    fill_in "Staff marital status", with: @personal_detail.staff_marital_status
    fill_in "Staff name", with: @personal_detail.staff_name
    fill_in "Staff nric", with: @personal_detail.staff_nric
    fill_in "Staff perm address", with: @personal_detail.staff_perm_address
    fill_in "Staff pob", with: @personal_detail.staff_pob
    fill_in "Staff postcode", with: @personal_detail.staff_postcode
    fill_in "Staff race", with: @personal_detail.staff_race
    fill_in "Staff religion", with: @personal_detail.staff_religion
    fill_in "Staff sex", with: @personal_detail.staff_sex
    fill_in "Staff state", with: @personal_detail.staff_state
    fill_in "Staff tel no", with: @personal_detail.staff_tel_no
    click_on "Create Personal detail"

    assert_text "Personal detail was successfully created"
    click_on "Back"
  end

  test "updating a Personal detail" do
    visit personal_details_url
    click_on "Edit", match: :first

    fill_in "Staff corr address", with: @personal_detail.staff_corr_address
    fill_in "Staff dob", with: @personal_detail.staff_dob
    fill_in "Staff employ type", with: @personal_detail.staff_employ_type
    fill_in "Staff hp no", with: @personal_detail.staff_hp_no
    fill_in "Staff marital status", with: @personal_detail.staff_marital_status
    fill_in "Staff name", with: @personal_detail.staff_name
    fill_in "Staff nric", with: @personal_detail.staff_nric
    fill_in "Staff perm address", with: @personal_detail.staff_perm_address
    fill_in "Staff pob", with: @personal_detail.staff_pob
    fill_in "Staff postcode", with: @personal_detail.staff_postcode
    fill_in "Staff race", with: @personal_detail.staff_race
    fill_in "Staff religion", with: @personal_detail.staff_religion
    fill_in "Staff sex", with: @personal_detail.staff_sex
    fill_in "Staff state", with: @personal_detail.staff_state
    fill_in "Staff tel no", with: @personal_detail.staff_tel_no
    click_on "Update Personal detail"

    assert_text "Personal detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal detail" do
    visit personal_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal detail was successfully destroyed"
  end
end
