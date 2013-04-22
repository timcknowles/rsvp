require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get information" do
    get :information
    assert_response :success
  end

end
