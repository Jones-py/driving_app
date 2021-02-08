require 'test_helper'

class AutomaticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get automatic_index_url
    assert_response :success
  end

  test "should get show" do
    get automatic_show_url
    assert_response :success
  end

  test "should get edit" do
    get automatic_edit_url
    assert_response :success
  end

end
