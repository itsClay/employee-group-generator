require 'test_helper'

class Api::EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get api_employee_new_url
    assert_response :success
  end

  test "should get create" do
    get api_employee_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_employee_destroy_url
    assert_response :success
  end

end
