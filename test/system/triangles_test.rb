require "application_system_test_case"

class TrianglesTest < ApplicationSystemTestCase
  setup do
    @triangle = triangles(:one)
  end

  test "visiting the index" do
    visit triangles_url
    assert_selector "h1", text: "Triangles"
  end

  test "should create triangle" do
    visit triangles_url
    click_on "New triangle"

    click_on "Create Triangle"

    assert_text "Triangle was successfully created"
    click_on "Back"
  end

  test "should update Triangle" do
    visit triangle_url(@triangle)
    click_on "Edit this triangle", match: :first

    click_on "Update Triangle"

    assert_text "Triangle was successfully updated"
    click_on "Back"
  end

  test "should destroy Triangle" do
    visit triangle_url(@triangle)
    click_on "Destroy this triangle", match: :first

    assert_text "Triangle was successfully destroyed"
  end
end
