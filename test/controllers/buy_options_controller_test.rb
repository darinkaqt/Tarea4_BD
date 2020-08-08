require 'test_helper'

class BuyOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buy_option = buy_options(:one)
  end

  test "should get index" do
    get buy_options_url
    assert_response :success
  end

  test "should get new" do
    get new_buy_option_url
    assert_response :success
  end

  test "should create buy_option" do
    assert_difference('BuyOption.count') do
      post buy_options_url, params: { buy_option: { company_name: @buy_option.company_name, date: @buy_option.date, material_id: @buy_option.material_id, price: @buy_option.price } }
    end

    assert_redirected_to buy_option_url(BuyOption.last)
  end

  test "should show buy_option" do
    get buy_option_url(@buy_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_buy_option_url(@buy_option)
    assert_response :success
  end

  test "should update buy_option" do
    patch buy_option_url(@buy_option), params: { buy_option: { company_name: @buy_option.company_name, date: @buy_option.date, material_id: @buy_option.material_id, price: @buy_option.price } }
    assert_redirected_to buy_option_url(@buy_option)
  end

  test "should destroy buy_option" do
    assert_difference('BuyOption.count', -1) do
      delete buy_option_url(@buy_option)
    end

    assert_redirected_to buy_options_url
  end
end
