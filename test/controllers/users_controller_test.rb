require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get delete" do
    get users_delete_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get register" do
    get users_register_url
    assert_response :success
  end

  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get comments" do
    get users_comments_url
    assert_response :success
  end

end
