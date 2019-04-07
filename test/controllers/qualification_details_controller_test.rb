require 'test_helper'

class QualificationDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualification_detail = qualification_details(:one)
  end

  test "should get index" do
    get qualification_details_url
    assert_response :success
  end

  test "should get new" do
    get new_qualification_detail_url
    assert_response :success
  end

  test "should create qualification_detail" do
    assert_difference('QualificationDetail.count') do
      post qualification_details_url, params: { qualification_detail: { duration: @qualification_detail.duration, personal_detail_id: @qualification_detail.personal_detail_id, qualification: @qualification_detail.qualification, sch_col_uni: @qualification_detail.sch_col_uni, sub_disc: @qualification_detail.sub_disc, year: @qualification_detail.year } }
    end

    assert_redirected_to qualification_detail_url(QualificationDetail.last)
  end

  test "should show qualification_detail" do
    get qualification_detail_url(@qualification_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualification_detail_url(@qualification_detail)
    assert_response :success
  end

  test "should update qualification_detail" do
    patch qualification_detail_url(@qualification_detail), params: { qualification_detail: { duration: @qualification_detail.duration, personal_detail_id: @qualification_detail.personal_detail_id, qualification: @qualification_detail.qualification, sch_col_uni: @qualification_detail.sch_col_uni, sub_disc: @qualification_detail.sub_disc, year: @qualification_detail.year } }
    assert_redirected_to qualification_detail_url(@qualification_detail)
  end

  test "should destroy qualification_detail" do
    assert_difference('QualificationDetail.count', -1) do
      delete qualification_detail_url(@qualification_detail)
    end

    assert_redirected_to qualification_details_url
  end
end
