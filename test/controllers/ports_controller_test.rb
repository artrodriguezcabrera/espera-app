require 'test_helper'

class PortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ports_index_url
    assert_response :success
  end

  test "should get show" do
    get ports_show_url
    assert_response :success
  end

end
