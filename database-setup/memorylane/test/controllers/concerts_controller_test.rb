require 'test_helper'

class ConcertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concerts_index_url
    assert_response :success
  end

  test "should get show" do
    get concerts_show_url
    assert_response :success
  end

  test "should get new" do
    get concerts_new_url
    assert_response :success
  end

  test "should get create" do
    get concerts_create_url
    assert_response :success
  end

  test "should get edit" do
    get concerts_edit_url
    assert_response :success
  end

  test "should get update" do
    get concerts_update_url
    assert_response :success
  end

end
