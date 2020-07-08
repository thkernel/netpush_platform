require "application_system_test_case"

class OrderCardsTest < ApplicationSystemTestCase
  setup do
    @order_card = order_cards(:one)
  end

  test "visiting the index" do
    visit order_cards_url
    assert_selector "h1", text: "Order Cards"
  end

  test "creating a Order card" do
    visit order_cards_url
    click_on "New Order Card"

    fill_in "Address", with: @order_card.address
    fill_in "Card type", with: @order_card.card_type
    fill_in "City", with: @order_card.city
    fill_in "Country", with: @order_card.country
    fill_in "First name", with: @order_card.first_name
    fill_in "Last name", with: @order_card.last_name
    fill_in "Note", with: @order_card.note
    fill_in "Phone number", with: @order_card.phone_number
    fill_in "Quantity", with: @order_card.quantity
    fill_in "Status", with: @order_card.status
    click_on "Create Order card"

    assert_text "Order card was successfully created"
    click_on "Back"
  end

  test "updating a Order card" do
    visit order_cards_url
    click_on "Edit", match: :first

    fill_in "Address", with: @order_card.address
    fill_in "Card type", with: @order_card.card_type
    fill_in "City", with: @order_card.city
    fill_in "Country", with: @order_card.country
    fill_in "First name", with: @order_card.first_name
    fill_in "Last name", with: @order_card.last_name
    fill_in "Note", with: @order_card.note
    fill_in "Phone number", with: @order_card.phone_number
    fill_in "Quantity", with: @order_card.quantity
    fill_in "Status", with: @order_card.status
    click_on "Update Order card"

    assert_text "Order card was successfully updated"
    click_on "Back"
  end

  test "destroying a Order card" do
    visit order_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order card was successfully destroyed"
  end
end
