require 'test_helper'

class TrainingAttendedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_attended = training_attendeds(:one)
  end

  test "should get index" do
    get training_attendeds_url
    assert_response :success
  end

  test "should get new" do
    get new_training_attended_url
    assert_response :success
  end

  test "should create training_attended" do
    assert_difference('TrainingAttended.count') do
      post training_attendeds_url, params: { training_attended: { duration_training: @training_attended.duration_training, personal_detail_id: @training_attended.personal_detail_id, status: @training_attended.status, training: @training_attended.training, training_institute: @training_attended.training_institute, training_place: @training_attended.training_place } }
    end

    assert_redirected_to training_attended_url(TrainingAttended.last)
  end

  test "should show training_attended" do
    get training_attended_url(@training_attended)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_attended_url(@training_attended)
    assert_response :success
  end

  test "should update training_attended" do
    patch training_attended_url(@training_attended), params: { training_attended: { duration_training: @training_attended.duration_training, personal_detail_id: @training_attended.personal_detail_id, status: @training_attended.status, training: @training_attended.training, training_institute: @training_attended.training_institute, training_place: @training_attended.training_place } }
    assert_redirected_to training_attended_url(@training_attended)
  end

  test "should destroy training_attended" do
    assert_difference('TrainingAttended.count', -1) do
      delete training_attended_url(@training_attended)
    end

    assert_redirected_to training_attendeds_url
  end
end
