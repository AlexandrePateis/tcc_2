require "application_system_test_case"

class FormOfPaymentsTest < ApplicationSystemTestCase
  setup do
    @form_of_payment = form_of_payments(:one)
  end

  test "visiting the index" do
    visit form_of_payments_url
    assert_selector "h1", text: "Form of payments"
  end

  test "should create form of payment" do
    visit form_of_payments_url
    click_on "New form of payment"

    fill_in "Name", with: @form_of_payment.name
    click_on "Create Form of payment"

    assert_text "Form of payment was successfully created"
    click_on "Back"
  end

  test "should update Form of payment" do
    visit form_of_payment_url(@form_of_payment)
    click_on "Edit this form of payment", match: :first

    fill_in "Name", with: @form_of_payment.name
    click_on "Update Form of payment"

    assert_text "Form of payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Form of payment" do
    visit form_of_payment_url(@form_of_payment)
    click_on "Destroy this form of payment", match: :first

    assert_text "Form of payment was successfully destroyed"
  end
end
