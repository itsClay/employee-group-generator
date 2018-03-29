require 'test_helper'

class Api::GroupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_group_index_url
    assert_response :success
  end

  test "should get create" do
    get api_group_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_group_destroy_url
    assert_response :success
  end

end
