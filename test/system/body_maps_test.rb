require "application_system_test_case"

class BodyMapsTest < ApplicationSystemTestCase
  setup do
    @body_map = body_maps(:one)
  end

  test "visiting the index" do
    visit body_maps_url
    assert_selector "h1", text: "Body Maps"
  end

  test "creating a Body map" do
    visit body_maps_url
    click_on "New Body Map"

    fill_in "Ref", with: @body_map.ref
    click_on "Create Body map"

    assert_text "Body map was successfully created"
    click_on "Back"
  end

  test "updating a Body map" do
    visit body_maps_url
    click_on "Edit", match: :first

    fill_in "Ref", with: @body_map.ref
    click_on "Update Body map"

    assert_text "Body map was successfully updated"
    click_on "Back"
  end

  test "destroying a Body map" do
    visit body_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Body map was successfully destroyed"
  end
end
