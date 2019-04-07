require "application_system_test_case"

class BankAccountsTest < ApplicationSystemTestCase
  setup do
    @bank_account = bank_accounts(:one)
  end

  test "visiting the index" do
    visit bank_accounts_url
    assert_selector "h1", text: "Bank Accounts"
  end

  test "creating a Bank account" do
    visit bank_accounts_url
    click_on "New Bank Account"

    fill_in "Account type", with: @bank_account.account_type
    fill_in "Bank account no", with: @bank_account.bank_account_no
    fill_in "Bank name", with: @bank_account.bank_name
    fill_in "Personal detail", with: @bank_account.personal_detail_id
    click_on "Create Bank account"

    assert_text "Bank account was successfully created"
    click_on "Back"
  end

  test "updating a Bank account" do
    visit bank_accounts_url
    click_on "Edit", match: :first

    fill_in "Account type", with: @bank_account.account_type
    fill_in "Bank account no", with: @bank_account.bank_account_no
    fill_in "Bank name", with: @bank_account.bank_name
    fill_in "Personal detail", with: @bank_account.personal_detail_id
    click_on "Update Bank account"

    assert_text "Bank account was successfully updated"
    click_on "Back"
  end

  test "destroying a Bank account" do
    visit bank_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bank account was successfully destroyed"
  end
end
