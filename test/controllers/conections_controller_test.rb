require 'test_helper'

class ConectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get conections_new_url
    assert_response :success
  end

  test "should get create" do
    get conections_create_url
    assert_response :success
  end

  test "should get index" do
    get conections_index_url
    assert_response :success
  end

  test "should get show" do
    get conections_show_url
    assert_response :success
  end

end
