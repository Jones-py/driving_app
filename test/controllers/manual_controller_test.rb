require 'test_helper'

class ManualControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manual_index_url
    assert_response :success
  end

  test "should get show" do
    get manual_show_url
    assert_response :success
  end

  test "should get edit" do
    get manual_edit_url
    assert_response :success
  end

end
