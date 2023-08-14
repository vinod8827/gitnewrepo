require "test_helper"

class TrianglesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @triangle = triangles(:one)
  end

  test "should get index" do
    get triangles_url
    assert_response :success
  end

  test "should get new" do
    get new_triangle_url
    assert_response :success
  end

  test "should create triangle" do
    assert_difference("Triangle.count") do
      post triangles_url, params: { triangle: {  } }
    end

    assert_redirected_to triangle_url(Triangle.last)
  end

  test "should show triangle" do
    get triangle_url(@triangle)
    assert_response :success
  end

  test "should get edit" do
    get edit_triangle_url(@triangle)
    assert_response :success
  end

  test "should update triangle" do
    patch triangle_url(@triangle), params: { triangle: {  } }
    assert_redirected_to triangle_url(@triangle)
  end

  test "should destroy triangle" do
    assert_difference("Triangle.count", -1) do
      delete triangle_url(@triangle)
    end

    assert_redirected_to triangles_url
  end
end
