require "application_system_test_case"

class BuyOptionsTest < ApplicationSystemTestCase
  setup do
    @buy_option = buy_options(:one)
  end

  test "visiting the index" do
    visit buy_options_url
    assert_selector "h1", text: "Buy Options"
  end

  test "creating a Buy option" do
    visit buy_options_url
    click_on "New Buy Option"

    fill_in "Company name", with: @buy_option.company_name
    fill_in "Date", with: @buy_option.date
    fill_in "Material", with: @buy_option.material_id
    fill_in "Price", with: @buy_option.price
    click_on "Create Buy option"

    assert_text "Buy option was successfully created"
    click_on "Back"
  end

  test "updating a Buy option" do
    visit buy_options_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @buy_option.company_name
    fill_in "Date", with: @buy_option.date
    fill_in "Material", with: @buy_option.material_id
    fill_in "Price", with: @buy_option.price
    click_on "Update Buy option"

    assert_text "Buy option was successfully updated"
    click_on "Back"
  end

  test "destroying a Buy option" do
    visit buy_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buy option was successfully destroyed"
  end
end
