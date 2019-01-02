require 'test_helper'

class MarkControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get mark_add_url
    assert_response :success
  end

end
