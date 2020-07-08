require 'test_helper'

class OrderCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_card = order_cards(:one)
  end

  test "should get index" do
    get order_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_order_card_url
    assert_response :success
  end

  test "should create order_card" do
    assert_difference('OrderCard.count') do
      post order_cards_url, params: { order_card: { address: @order_card.address, card_type: @order_card.card_type, city: @order_card.city, country: @order_card.country, first_name: @order_card.first_name, last_name: @order_card.last_name, note: @order_card.note, phone_number: @order_card.phone_number, quantity: @order_card.quantity, status: @order_card.status } }
    end

    assert_redirected_to order_card_url(OrderCard.last)
  end

  test "should show order_card" do
    get order_card_url(@order_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_card_url(@order_card)
    assert_response :success
  end

  test "should update order_card" do
    patch order_card_url(@order_card), params: { order_card: { address: @order_card.address, card_type: @order_card.card_type, city: @order_card.city, country: @order_card.country, first_name: @order_card.first_name, last_name: @order_card.last_name, note: @order_card.note, phone_number: @order_card.phone_number, quantity: @order_card.quantity, status: @order_card.status } }
    assert_redirected_to order_card_url(@order_card)
  end

  test "should destroy order_card" do
    assert_difference('OrderCard.count', -1) do
      delete order_card_url(@order_card)
    end

    assert_redirected_to order_cards_url
  end
end
