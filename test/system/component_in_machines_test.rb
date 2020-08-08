require "application_system_test_case"

class ComponentInMachinesTest < ApplicationSystemTestCase
  setup do
    @component_in_machine = component_in_machines(:one)
  end

  test "visiting the index" do
    visit component_in_machines_url
    assert_selector "h1", text: "Component In Machines"
  end

  test "creating a Component in machine" do
    visit component_in_machines_url
    click_on "New Component In Machine"

    fill_in "Component", with: @component_in_machine.component_id
    fill_in "Machine", with: @component_in_machine.machine_id
    fill_in "Quantity", with: @component_in_machine.quantity
    click_on "Create Component in machine"

    assert_text "Component in machine was successfully created"
    click_on "Back"
  end

  test "updating a Component in machine" do
    visit component_in_machines_url
    click_on "Edit", match: :first

    fill_in "Component", with: @component_in_machine.component_id
    fill_in "Machine", with: @component_in_machine.machine_id
    fill_in "Quantity", with: @component_in_machine.quantity
    click_on "Update Component in machine"

    assert_text "Component in machine was successfully updated"
    click_on "Back"
  end

  test "destroying a Component in machine" do
    visit component_in_machines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Component in machine was successfully destroyed"
  end
end
