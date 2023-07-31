require 'test_helper'

class SharepostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shareposts_index_url
    assert_response :success
  end

  test "should get new" do
    get shareposts_new_url
    assert_response :success
  end

  test "should get show" do
    get shareposts_show_url
    assert_response :success
  end

  test "should get delete" do
    get shareposts_delete_url
    assert_response :success
  end

  test "should get edit" do
    get shareposts_edit_url
    assert_response :success
  end

  test "should get register" do
    get shareposts_register_url
    assert_response :success
  end

  test "should get login" do
    get shareposts_login_url
    assert_response :success
  end

  test "should get comments" do
    get shareposts_comments_url
    assert_response :success
  end

end
