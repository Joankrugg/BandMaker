require 'test_helper'

class BandProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get band_projects_index_url
    assert_response :success
  end

  test "should get new" do
    get band_projects_new_url
    assert_response :success
  end

  test "should get create" do
    get band_projects_create_url
    assert_response :success
  end

  test "should get edit" do
    get band_projects_edit_url
    assert_response :success
  end

  test "should get update" do
    get band_projects_update_url
    assert_response :success
  end

  test "should get destroy" do
    get band_projects_destroy_url
    assert_response :success
  end

end
