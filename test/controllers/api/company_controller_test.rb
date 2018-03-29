require 'test_helper'

class Api::CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_company_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_company_destroy_url
    assert_response :success
  end

end
