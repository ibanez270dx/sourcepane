require 'test_helper'

class AuthorizationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authorizations_index_url
    assert_response :success
  end

  test "should get new" do
    get authorizations_new_url
    assert_response :success
  end

  test "should get create" do
    get authorizations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get authorizations_destroy_url
    assert_response :success
  end

end
