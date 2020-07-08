require "application_system_test_case"

class ContactBooksTest < ApplicationSystemTestCase
  setup do
    @contact_book = contact_books(:one)
  end

  test "visiting the index" do
    visit contact_books_url
    assert_selector "h1", text: "Contact Books"
  end

  test "creating a Contact book" do
    visit contact_books_url
    click_on "New Contact Book"

    fill_in "Description", with: @contact_book.description
    fill_in "Name", with: @contact_book.name
    fill_in "Slug", with: @contact_book.slug
    fill_in "Status", with: @contact_book.status
    fill_in "User", with: @contact_book.user_id
    click_on "Create Contact book"

    assert_text "Contact book was successfully created"
    click_on "Back"
  end

  test "updating a Contact book" do
    visit contact_books_url
    click_on "Edit", match: :first

    fill_in "Description", with: @contact_book.description
    fill_in "Name", with: @contact_book.name
    fill_in "Slug", with: @contact_book.slug
    fill_in "Status", with: @contact_book.status
    fill_in "User", with: @contact_book.user_id
    click_on "Update Contact book"

    assert_text "Contact book was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact book" do
    visit contact_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact book was successfully destroyed"
  end
end
