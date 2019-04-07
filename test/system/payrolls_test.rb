require "application_system_test_case"

class PayrollsTest < ApplicationSystemTestCase
  setup do
    @payroll = payrolls(:one)
  end

  test "visiting the index" do
    visit payrolls_url
    assert_selector "h1", text: "Payrolls"
  end

  test "creating a Payroll" do
    visit payrolls_url
    click_on "New Payroll"

    fill_in "Epf no", with: @payroll.epf_no
    fill_in "Income tax no", with: @payroll.income_tax_no
    fill_in "Personal detail", with: @payroll.personal_detail_id
    fill_in "Socso no", with: @payroll.socso_no
    click_on "Create Payroll"

    assert_text "Payroll was successfully created"
    click_on "Back"
  end

  test "updating a Payroll" do
    visit payrolls_url
    click_on "Edit", match: :first

    fill_in "Epf no", with: @payroll.epf_no
    fill_in "Income tax no", with: @payroll.income_tax_no
    fill_in "Personal detail", with: @payroll.personal_detail_id
    fill_in "Socso no", with: @payroll.socso_no
    click_on "Update Payroll"

    assert_text "Payroll was successfully updated"
    click_on "Back"
  end

  test "destroying a Payroll" do
    visit payrolls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payroll was successfully destroyed"
  end
end
