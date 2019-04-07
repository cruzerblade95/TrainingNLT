require "application_system_test_case"

class LegalSpousesTest < ApplicationSystemTestCase
  setup do
    @legal_spouse = legal_spouses(:one)
  end

  test "visiting the index" do
    visit legal_spouses_url
    assert_selector "h1", text: "Legal Spouses"
  end

  test "creating a Legal spouse" do
    visit legal_spouses_url
    click_on "New Legal Spouse"

    fill_in "Personal detail", with: @legal_spouse.personal_detail_id
    fill_in "Spouse age", with: @legal_spouse.spouse_age
    fill_in "Spouse dob", with: @legal_spouse.spouse_dob
    fill_in "Spouse hp no", with: @legal_spouse.spouse_hp_no
    fill_in "Spouse name", with: @legal_spouse.spouse_name
    fill_in "Spouse nric", with: @legal_spouse.spouse_nric
    fill_in "Spouse occupation", with: @legal_spouse.spouse_occupation
    fill_in "Spouse perm address", with: @legal_spouse.spouse_perm_address
    fill_in "Spouse pob", with: @legal_spouse.spouse_pob
    fill_in "Spouse race", with: @legal_spouse.spouse_race
    fill_in "Spouse religion", with: @legal_spouse.spouse_religion
    fill_in "Spouse tel no", with: @legal_spouse.spouse_tel_no
    click_on "Create Legal spouse"

    assert_text "Legal spouse was successfully created"
    click_on "Back"
  end

  test "updating a Legal spouse" do
    visit legal_spouses_url
    click_on "Edit", match: :first

    fill_in "Personal detail", with: @legal_spouse.personal_detail_id
    fill_in "Spouse age", with: @legal_spouse.spouse_age
    fill_in "Spouse dob", with: @legal_spouse.spouse_dob
    fill_in "Spouse hp no", with: @legal_spouse.spouse_hp_no
    fill_in "Spouse name", with: @legal_spouse.spouse_name
    fill_in "Spouse nric", with: @legal_spouse.spouse_nric
    fill_in "Spouse occupation", with: @legal_spouse.spouse_occupation
    fill_in "Spouse perm address", with: @legal_spouse.spouse_perm_address
    fill_in "Spouse pob", with: @legal_spouse.spouse_pob
    fill_in "Spouse race", with: @legal_spouse.spouse_race
    fill_in "Spouse religion", with: @legal_spouse.spouse_religion
    fill_in "Spouse tel no", with: @legal_spouse.spouse_tel_no
    click_on "Update Legal spouse"

    assert_text "Legal spouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Legal spouse" do
    visit legal_spouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legal spouse was successfully destroyed"
  end
end
