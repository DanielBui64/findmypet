require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pets_new_url
    assert_response :success
  end

  test "should get create" do
    get pets_create_url
    assert_response :success
  end

  test "should get my_pets" do
    get pets_my_pets_url
    assert_response :success
  end

  test "should get destroy" do
    get pets_destroy_url
    assert_response :success
  end
end
