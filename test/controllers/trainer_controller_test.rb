require 'test_helper'

class TrainerControllerTest < ActionDispatch::IntegrationTest
  test "should get log_in" do
    get trainer_log_in_url
    assert_response :success
  end

  test "should get trainer_info" do
    get trainer_trainer_info_url
    assert_response :success
  end

  test "should get trainer" do
    get trainer_trainer_url
    assert_response :success
  end

  test "should get trainer_rank" do
    get trainer_trainer_rank_url
    assert_response :success
  end

end
