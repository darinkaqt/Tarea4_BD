require 'test_helper'

class ComponentMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component_material = component_materials(:one)
  end

  test "should get index" do
    get component_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_component_material_url
    assert_response :success
  end

  test "should create component_material" do
    assert_difference('ComponentMaterial.count') do
      post component_materials_url, params: { component_material: { component_id: @component_material.component_id, material_id: @component_material.material_id, measure_unit: @component_material.measure_unit, quantity: @component_material.quantity } }
    end

    assert_redirected_to component_material_url(ComponentMaterial.last)
  end

  test "should show component_material" do
    get component_material_url(@component_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_material_url(@component_material)
    assert_response :success
  end

  test "should update component_material" do
    patch component_material_url(@component_material), params: { component_material: { component_id: @component_material.component_id, material_id: @component_material.material_id, measure_unit: @component_material.measure_unit, quantity: @component_material.quantity } }
    assert_redirected_to component_material_url(@component_material)
  end

  test "should destroy component_material" do
    assert_difference('ComponentMaterial.count', -1) do
      delete component_material_url(@component_material)
    end

    assert_redirected_to component_materials_url
  end
end
