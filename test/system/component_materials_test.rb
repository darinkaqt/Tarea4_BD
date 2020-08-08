require "application_system_test_case"

class ComponentMaterialsTest < ApplicationSystemTestCase
  setup do
    @component_material = component_materials(:one)
  end

  test "visiting the index" do
    visit component_materials_url
    assert_selector "h1", text: "Component Materials"
  end

  test "creating a Component material" do
    visit component_materials_url
    click_on "New Component Material"

    fill_in "Component", with: @component_material.component_id
    fill_in "Material", with: @component_material.material_id
    fill_in "Measure unit", with: @component_material.measure_unit
    fill_in "Quantity", with: @component_material.quantity
    click_on "Create Component material"

    assert_text "Component material was successfully created"
    click_on "Back"
  end

  test "updating a Component material" do
    visit component_materials_url
    click_on "Edit", match: :first

    fill_in "Component", with: @component_material.component_id
    fill_in "Material", with: @component_material.material_id
    fill_in "Measure unit", with: @component_material.measure_unit
    fill_in "Quantity", with: @component_material.quantity
    click_on "Update Component material"

    assert_text "Component material was successfully updated"
    click_on "Back"
  end

  test "destroying a Component material" do
    visit component_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Component material was successfully destroyed"
  end
end
