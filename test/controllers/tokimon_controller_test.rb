require 'test_helper'

class TokimonControllerTest < ActionDispatch::IntegrationTest
  test "should get tokimon_info" do
    get tokimon_tokimon_info_url
    assert_response :success
  end

end
