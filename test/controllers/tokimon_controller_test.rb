require 'test_helper'

class TokimonControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get tokimon_home_url
    assert_response :success
  end

  test "should get log_in" do
    get tokimon_log_in_url
    assert_response :success
  end

  test "should get tokimon_info" do
    get tokimon_tokimon_info_url
    assert_response :success
  end

  test "should get trainer_info" do
    get tokimon_trainer_info_url
    assert_response :success
  end

  test "should get trainer" do
    get tokimon_trainer_url
    assert_response :success
  end

end
