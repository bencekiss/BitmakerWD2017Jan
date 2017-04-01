require 'test_helper'

class EdusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get edus_index_url
    assert_response :success
  end

  test "should get new" do
    get edus_new_url
    assert_response :success
  end

  test "should get create" do
    get edus_create_url
    assert_response :success
  end

  test "should get edit" do
    get edus_edit_url
    assert_response :success
  end

  test "should get update" do
    get edus_update_url
    assert_response :success
  end

  test "should get destroy" do
    get edus_destroy_url
    assert_response :success
  end

end
