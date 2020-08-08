require "application_system_test_case"

class FactionsTest < ApplicationSystemTestCase
  setup do
    @faction = factions(:one)
  end

  test "visiting the index" do
    visit factions_url
    assert_selector "h1", text: "Factions"
  end

  test "creating a Faction" do
    visit factions_url
    click_on "New Faction"

    fill_in "Name faction", with: @faction.name_faction
    fill_in "Rebel?", with: @faction.rebel?
    click_on "Create Faction"

    assert_text "Faction was successfully created"
    click_on "Back"
  end

  test "updating a Faction" do
    visit factions_url
    click_on "Edit", match: :first

    fill_in "Name faction", with: @faction.name_faction
    fill_in "Rebel?", with: @faction.rebel?
    click_on "Update Faction"

    assert_text "Faction was successfully updated"
    click_on "Back"
  end

  test "destroying a Faction" do
    visit factions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faction was successfully destroyed"
  end
end
