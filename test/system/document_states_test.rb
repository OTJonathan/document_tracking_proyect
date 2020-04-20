require "application_system_test_case"

class DocumentStatesTest < ApplicationSystemTestCase
  setup do
    @document_state = document_states(:one)
  end

  test "visiting the index" do
    visit document_states_url
    assert_selector "h1", text: "Document States"
  end

  test "creating a Document state" do
    visit document_states_url
    click_on "New Document State"

    fill_in "Class", with: @document_state.class
    fill_in "Name", with: @document_state.name
    click_on "Create Document state"

    assert_text "Document state was successfully created"
    click_on "Back"
  end

  test "updating a Document state" do
    visit document_states_url
    click_on "Edit", match: :first

    fill_in "Class", with: @document_state.class
    fill_in "Name", with: @document_state.name
    click_on "Update Document state"

    assert_text "Document state was successfully updated"
    click_on "Back"
  end

  test "destroying a Document state" do
    visit document_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document state was successfully destroyed"
  end
end
