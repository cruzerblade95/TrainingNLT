require "application_system_test_case"

class ProfessionalMembershipsTest < ApplicationSystemTestCase
  setup do
    @professional_membership = professional_memberships(:one)
  end

  test "visiting the index" do
    visit professional_memberships_url
    assert_selector "h1", text: "Professional Memberships"
  end

  test "creating a Professional membership" do
    visit professional_memberships_url
    click_on "New Professional Membership"

    fill_in "Annual subs", with: @professional_membership.annual_subs
    fill_in "Association", with: @professional_membership.association
    fill_in "Duration date", with: @professional_membership.duration_date
    fill_in "Institution", with: @professional_membership.institution
    fill_in "Personal detail", with: @professional_membership.personal_detail_id
    click_on "Create Professional membership"

    assert_text "Professional membership was successfully created"
    click_on "Back"
  end

  test "updating a Professional membership" do
    visit professional_memberships_url
    click_on "Edit", match: :first

    fill_in "Annual subs", with: @professional_membership.annual_subs
    fill_in "Association", with: @professional_membership.association
    fill_in "Duration date", with: @professional_membership.duration_date
    fill_in "Institution", with: @professional_membership.institution
    fill_in "Personal detail", with: @professional_membership.personal_detail_id
    click_on "Update Professional membership"

    assert_text "Professional membership was successfully updated"
    click_on "Back"
  end

  test "destroying a Professional membership" do
    visit professional_memberships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professional membership was successfully destroyed"
  end
end
