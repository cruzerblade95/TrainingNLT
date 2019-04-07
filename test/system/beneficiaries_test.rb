require "application_system_test_case"

class BeneficiariesTest < ApplicationSystemTestCase
  setup do
    @beneficiary = beneficiaries(:one)
  end

  test "visiting the index" do
    visit beneficiaries_url
    assert_selector "h1", text: "Beneficiaries"
  end

  test "creating a Beneficiary" do
    visit beneficiaries_url
    click_on "New Beneficiary"

    fill_in "Ben hp no", with: @beneficiary.ben_hp_no
    fill_in "Ben name", with: @beneficiary.ben_name
    fill_in "Ben nric", with: @beneficiary.ben_nric
    fill_in "Ben percentage", with: @beneficiary.ben_percentage
    fill_in "Ben perm address", with: @beneficiary.ben_perm_address
    fill_in "Ben postcode", with: @beneficiary.ben_postcode
    fill_in "Ben relationship", with: @beneficiary.ben_relationship
    fill_in "Ben tel no", with: @beneficiary.ben_tel_no
    click_on "Create Beneficiary"

    assert_text "Beneficiary was successfully created"
    click_on "Back"
  end

  test "updating a Beneficiary" do
    visit beneficiaries_url
    click_on "Edit", match: :first

    fill_in "Ben hp no", with: @beneficiary.ben_hp_no
    fill_in "Ben name", with: @beneficiary.ben_name
    fill_in "Ben nric", with: @beneficiary.ben_nric
    fill_in "Ben percentage", with: @beneficiary.ben_percentage
    fill_in "Ben perm address", with: @beneficiary.ben_perm_address
    fill_in "Ben postcode", with: @beneficiary.ben_postcode
    fill_in "Ben relationship", with: @beneficiary.ben_relationship
    fill_in "Ben tel no", with: @beneficiary.ben_tel_no
    click_on "Update Beneficiary"

    assert_text "Beneficiary was successfully updated"
    click_on "Back"
  end

  test "destroying a Beneficiary" do
    visit beneficiaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beneficiary was successfully destroyed"
  end
end
