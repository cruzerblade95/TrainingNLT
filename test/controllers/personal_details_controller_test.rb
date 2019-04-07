require 'test_helper'

class PersonalDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_detail = personal_details(:one)
  end

  test "should get index" do
    get personal_details_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_detail_url
    assert_response :success
  end

  test "should create personal_detail" do
    assert_difference('PersonalDetail.count') do
      post personal_details_url, params: { personal_detail: { staff_corr_address: @personal_detail.staff_corr_address, staff_dob: @personal_detail.staff_dob, staff_employ_type: @personal_detail.staff_employ_type, staff_hp_no: @personal_detail.staff_hp_no, staff_marital_status: @personal_detail.staff_marital_status, staff_name: @personal_detail.staff_name, staff_nric: @personal_detail.staff_nric, staff_perm_address: @personal_detail.staff_perm_address, staff_pob: @personal_detail.staff_pob, staff_postcode: @personal_detail.staff_postcode, staff_race: @personal_detail.staff_race, staff_religion: @personal_detail.staff_religion, staff_sex: @personal_detail.staff_sex, staff_state: @personal_detail.staff_state, staff_tel_no: @personal_detail.staff_tel_no } }
    end

    assert_redirected_to personal_detail_url(PersonalDetail.last)
  end

  test "should show personal_detail" do
    get personal_detail_url(@personal_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_detail_url(@personal_detail)
    assert_response :success
  end

  test "should update personal_detail" do
    patch personal_detail_url(@personal_detail), params: { personal_detail: { staff_corr_address: @personal_detail.staff_corr_address, staff_dob: @personal_detail.staff_dob, staff_employ_type: @personal_detail.staff_employ_type, staff_hp_no: @personal_detail.staff_hp_no, staff_marital_status: @personal_detail.staff_marital_status, staff_name: @personal_detail.staff_name, staff_nric: @personal_detail.staff_nric, staff_perm_address: @personal_detail.staff_perm_address, staff_pob: @personal_detail.staff_pob, staff_postcode: @personal_detail.staff_postcode, staff_race: @personal_detail.staff_race, staff_religion: @personal_detail.staff_religion, staff_sex: @personal_detail.staff_sex, staff_state: @personal_detail.staff_state, staff_tel_no: @personal_detail.staff_tel_no } }
    assert_redirected_to personal_detail_url(@personal_detail)
  end

  test "should destroy personal_detail" do
    assert_difference('PersonalDetail.count', -1) do
      delete personal_detail_url(@personal_detail)
    end

    assert_redirected_to personal_details_url
  end
end
