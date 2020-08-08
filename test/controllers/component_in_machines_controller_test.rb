require 'test_helper'

class ComponentInMachinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component_in_machine = component_in_machines(:one)
  end

  test "should get index" do
    get component_in_machines_url
    assert_response :success
  end

  test "should get new" do
    get new_component_in_machine_url
    assert_response :success
  end

  test "should create component_in_machine" do
    assert_difference('ComponentInMachine.count') do
      post component_in_machines_url, params: { component_in_machine: { component_id: @component_in_machine.component_id, machine_id: @component_in_machine.machine_id, quantity: @component_in_machine.quantity } }
    end

    assert_redirected_to component_in_machine_url(ComponentInMachine.last)
  end

  test "should show component_in_machine" do
    get component_in_machine_url(@component_in_machine)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_in_machine_url(@component_in_machine)
    assert_response :success
  end

  test "should update component_in_machine" do
    patch component_in_machine_url(@component_in_machine), params: { component_in_machine: { component_id: @component_in_machine.component_id, machine_id: @component_in_machine.machine_id, quantity: @component_in_machine.quantity } }
    assert_redirected_to component_in_machine_url(@component_in_machine)
  end

  test "should destroy component_in_machine" do
    assert_difference('ComponentInMachine.count', -1) do
      delete component_in_machine_url(@component_in_machine)
    end

    assert_redirected_to component_in_machines_url
  end
end
