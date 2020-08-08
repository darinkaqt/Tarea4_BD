require 'test_helper'

class MachineInSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @machine_in_section = machine_in_sections(:one)
  end

  test "should get index" do
    get machine_in_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_machine_in_section_url
    assert_response :success
  end

  test "should create machine_in_section" do
    assert_difference('MachineInSection.count') do
      post machine_in_sections_url, params: { machine_in_section: { machine_id: @machine_in_section.machine_id, section_id: @machine_in_section.section_id } }
    end

    assert_redirected_to machine_in_section_url(MachineInSection.last)
  end

  test "should show machine_in_section" do
    get machine_in_section_url(@machine_in_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_machine_in_section_url(@machine_in_section)
    assert_response :success
  end

  test "should update machine_in_section" do
    patch machine_in_section_url(@machine_in_section), params: { machine_in_section: { machine_id: @machine_in_section.machine_id, section_id: @machine_in_section.section_id } }
    assert_redirected_to machine_in_section_url(@machine_in_section)
  end

  test "should destroy machine_in_section" do
    assert_difference('MachineInSection.count', -1) do
      delete machine_in_section_url(@machine_in_section)
    end

    assert_redirected_to machine_in_sections_url
  end
end
