require 'test_helper'

class PlaysControllerTest < ActionDispatch::IntegrationTest
  test "should get casinos" do
    get plays_casinos_url
    assert_response :success
  end

end
