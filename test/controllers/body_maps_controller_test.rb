require 'test_helper'

class BodyMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_map = body_maps(:one)
  end

  test "should get index" do
    get body_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_body_map_url
    assert_response :success
  end

  test "should create body_map" do
    assert_difference('BodyMap.count') do
      post body_maps_url, params: { body_map: { ref: @body_map.ref } }
    end

    assert_redirected_to body_map_url(BodyMap.last)
  end

  test "should show body_map" do
    get body_map_url(@body_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_map_url(@body_map)
    assert_response :success
  end

  test "should update body_map" do
    patch body_map_url(@body_map), params: { body_map: { ref: @body_map.ref } }
    assert_redirected_to body_map_url(@body_map)
  end

  test "should destroy body_map" do
    assert_difference('BodyMap.count', -1) do
      delete body_map_url(@body_map)
    end

    assert_redirected_to body_maps_url
  end
end
