require 'test_helper'

class JeepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jeeps_index_url
    assert_response :success
  end

  test "should get show" do
    get jeeps_show_url
    assert_response :success
  end

  test "should get new" do
    get jeeps_new_url
    assert_response :success
  end

  test "should get create" do
    get jeeps_create_url
    assert_response :success
  end

  test "should get edit" do
    get jeeps_edit_url
    assert_response :success
  end

  test "should get update" do
    get jeeps_update_url
    assert_response :success
  end

  test "should get destroy" do
    get jeeps_destroy_url
    assert_response :success
  end

end
