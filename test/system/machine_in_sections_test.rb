require "application_system_test_case"

class MachineInSectionsTest < ApplicationSystemTestCase
  setup do
    @machine_in_section = machine_in_sections(:one)
  end

  test "visiting the index" do
    visit machine_in_sections_url
    assert_selector "h1", text: "Machine In Sections"
  end

  test "creating a Machine in section" do
    visit machine_in_sections_url
    click_on "New Machine In Section"

    fill_in "Machine", with: @machine_in_section.machine_id
    fill_in "Section", with: @machine_in_section.section_id
    click_on "Create Machine in section"

    assert_text "Machine in section was successfully created"
    click_on "Back"
  end

  test "updating a Machine in section" do
    visit machine_in_sections_url
    click_on "Edit", match: :first

    fill_in "Machine", with: @machine_in_section.machine_id
    fill_in "Section", with: @machine_in_section.section_id
    click_on "Update Machine in section"

    assert_text "Machine in section was successfully updated"
    click_on "Back"
  end

  test "destroying a Machine in section" do
    visit machine_in_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Machine in section was successfully destroyed"
  end
end
