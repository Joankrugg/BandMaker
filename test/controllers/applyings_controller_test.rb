require 'test_helper'

class ApplyingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get applyings_new_url
    assert_response :success
  end

  test "should get create" do
    get applyings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get applyings_destroy_url
    assert_response :success
  end

end
