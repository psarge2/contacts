require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "should create contact" do
    visit contacts_url
    click_on "New contact"

    fill_in "Birthday", with: @contact.birthday
    fill_in "City", with: @contact.city
    fill_in "Email", with: @contact.email
    fill_in "First name", with: @contact.first_name
    fill_in "Last name", with: @contact.last_name
    fill_in "Note", with: @contact.note
    fill_in "Phone", with: @contact.phone
    fill_in "State", with: @contact.state
    fill_in "Street address", with: @contact.street_address
    fill_in "Zip code", with: @contact.zip_code
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "should update Contact" do
    visit contact_url(@contact)
    click_on "Edit this contact", match: :first

    fill_in "Birthday", with: @contact.birthday
    fill_in "City", with: @contact.city
    fill_in "Email", with: @contact.email
    fill_in "First name", with: @contact.first_name
    fill_in "Last name", with: @contact.last_name
    fill_in "Note", with: @contact.note
    fill_in "Phone", with: @contact.phone
    fill_in "State", with: @contact.state
    fill_in "Street address", with: @contact.street_address
    fill_in "Zip code", with: @contact.zip_code
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact" do
    visit contact_url(@contact)
    click_on "Destroy this contact", match: :first

    assert_text "Contact was successfully destroyed"
  end
end
