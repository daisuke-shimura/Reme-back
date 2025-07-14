require "test_helper"

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_users_new_url
    assert_response :success
  end

  test "should get show" do
    get public_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_users_edit_url
    assert_response :success
  end

  test "should get create" do
    get public_users_create_url
    assert_response :success
  end

  test "should get update" do
    get public_users_update_url
    assert_response :success
  end

  test "should get delete" do
    get public_users_delete_url
    assert_response :success
  end
end
