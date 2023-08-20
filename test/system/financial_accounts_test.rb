require "application_system_test_case"

class FinancialAccountsTest < ApplicationSystemTestCase
  setup do
    @financial_account = financial_accounts(:one)
  end

  test "visiting the index" do
    visit financial_accounts_url
    assert_selector "h1", text: "Financial accounts"
  end

  test "should create financial account" do
    visit financial_accounts_url
    click_on "New financial account"

    click_on "Create Financial account"

    assert_text "Financial account was successfully created"
    click_on "Back"
  end

  test "should update Financial account" do
    visit financial_account_url(@financial_account)
    click_on "Edit this financial account", match: :first

    click_on "Update Financial account"

    assert_text "Financial account was successfully updated"
    click_on "Back"
  end

  test "should destroy Financial account" do
    visit financial_account_url(@financial_account)
    click_on "Destroy this financial account", match: :first

    assert_text "Financial account was successfully destroyed"
  end
end
