require 'test_helper'

class LegalSpousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legal_spouse = legal_spouses(:one)
  end

  test "should get index" do
    get legal_spouses_url
    assert_response :success
  end

  test "should get new" do
    get new_legal_spouse_url
    assert_response :success
  end

  test "should create legal_spouse" do
    assert_difference('LegalSpouse.count') do
      post legal_spouses_url, params: { legal_spouse: { personal_detail_id: @legal_spouse.personal_detail_id, spouse_age: @legal_spouse.spouse_age, spouse_dob: @legal_spouse.spouse_dob, spouse_hp_no: @legal_spouse.spouse_hp_no, spouse_name: @legal_spouse.spouse_name, spouse_nric: @legal_spouse.spouse_nric, spouse_occupation: @legal_spouse.spouse_occupation, spouse_perm_address: @legal_spouse.spouse_perm_address, spouse_pob: @legal_spouse.spouse_pob, spouse_race: @legal_spouse.spouse_race, spouse_religion: @legal_spouse.spouse_religion, spouse_tel_no: @legal_spouse.spouse_tel_no } }
    end

    assert_redirected_to legal_spouse_url(LegalSpouse.last)
  end

  test "should show legal_spouse" do
    get legal_spouse_url(@legal_spouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_legal_spouse_url(@legal_spouse)
    assert_response :success
  end

  test "should update legal_spouse" do
    patch legal_spouse_url(@legal_spouse), params: { legal_spouse: { personal_detail_id: @legal_spouse.personal_detail_id, spouse_age: @legal_spouse.spouse_age, spouse_dob: @legal_spouse.spouse_dob, spouse_hp_no: @legal_spouse.spouse_hp_no, spouse_name: @legal_spouse.spouse_name, spouse_nric: @legal_spouse.spouse_nric, spouse_occupation: @legal_spouse.spouse_occupation, spouse_perm_address: @legal_spouse.spouse_perm_address, spouse_pob: @legal_spouse.spouse_pob, spouse_race: @legal_spouse.spouse_race, spouse_religion: @legal_spouse.spouse_religion, spouse_tel_no: @legal_spouse.spouse_tel_no } }
    assert_redirected_to legal_spouse_url(@legal_spouse)
  end

  test "should destroy legal_spouse" do
    assert_difference('LegalSpouse.count', -1) do
      delete legal_spouse_url(@legal_spouse)
    end

    assert_redirected_to legal_spouses_url
  end
end
