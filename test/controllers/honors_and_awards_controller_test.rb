require 'test_helper'

class HonorsAndAwardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @honors_and_award = honors_and_awards(:one)
  end

  test "should get index" do
    get honors_and_awards_url
    assert_response :success
  end

  test "should get new" do
    get new_honors_and_award_url
    assert_response :success
  end

  test "should create honors_and_award" do
    assert_difference('HonorsAndAward.count') do
      post honors_and_awards_url, params: { honors_and_award: { date_received: @honors_and_award.date_received, grantor: @honors_and_award.grantor, honor_or_award: @honors_and_award.honor_or_award, personal_detail_id: @honors_and_award.personal_detail_id } }
    end

    assert_redirected_to honors_and_award_url(HonorsAndAward.last)
  end

  test "should show honors_and_award" do
    get honors_and_award_url(@honors_and_award)
    assert_response :success
  end

  test "should get edit" do
    get edit_honors_and_award_url(@honors_and_award)
    assert_response :success
  end

  test "should update honors_and_award" do
    patch honors_and_award_url(@honors_and_award), params: { honors_and_award: { date_received: @honors_and_award.date_received, grantor: @honors_and_award.grantor, honor_or_award: @honors_and_award.honor_or_award, personal_detail_id: @honors_and_award.personal_detail_id } }
    assert_redirected_to honors_and_award_url(@honors_and_award)
  end

  test "should destroy honors_and_award" do
    assert_difference('HonorsAndAward.count', -1) do
      delete honors_and_award_url(@honors_and_award)
    end

    assert_redirected_to honors_and_awards_url
  end
end
