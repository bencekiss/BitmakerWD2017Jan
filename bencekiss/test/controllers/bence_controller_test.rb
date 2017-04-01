require 'test_helper'

class BenceControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get bence_edit_url
    assert_response :success
  end

  test "should get update" do
    get bence_update_url
    assert_response :success
  end

  test "should get show" do
    get bence_show_url
    assert_response :success
  end

end
