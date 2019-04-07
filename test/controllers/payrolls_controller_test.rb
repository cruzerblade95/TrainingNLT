require 'test_helper'

class PayrollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get payrolls_url
    assert_response :success
  end

  test "should get new" do
    get new_payroll_url
    assert_response :success
  end

  test "should create payroll" do
    assert_difference('Payroll.count') do
      post payrolls_url, params: { payroll: { epf_no: @payroll.epf_no, income_tax_no: @payroll.income_tax_no, personal_detail_id: @payroll.personal_detail_id, socso_no: @payroll.socso_no } }
    end

    assert_redirected_to payroll_url(Payroll.last)
  end

  test "should show payroll" do
    get payroll_url(@payroll)
    assert_response :success
  end

  test "should get edit" do
    get edit_payroll_url(@payroll)
    assert_response :success
  end

  test "should update payroll" do
    patch payroll_url(@payroll), params: { payroll: { epf_no: @payroll.epf_no, income_tax_no: @payroll.income_tax_no, personal_detail_id: @payroll.personal_detail_id, socso_no: @payroll.socso_no } }
    assert_redirected_to payroll_url(@payroll)
  end

  test "should destroy payroll" do
    assert_difference('Payroll.count', -1) do
      delete payroll_url(@payroll)
    end

    assert_redirected_to payrolls_url
  end
end
