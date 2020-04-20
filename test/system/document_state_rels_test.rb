require "application_system_test_case"

class DocumentStateRelsTest < ApplicationSystemTestCase
  setup do
    @document_state_rel = document_state_rels(:one)
  end

  test "visiting the index" do
    visit document_state_rels_url
    assert_selector "h1", text: "Document State Rels"
  end

  test "creating a Document state rel" do
    visit document_state_rels_url
    click_on "New Document State Rel"

    fill_in "Date", with: @document_state_rel.date
    fill_in "Description", with: @document_state_rel.description
    fill_in "Document", with: @document_state_rel.document_id
    fill_in "Document state", with: @document_state_rel.document_state_id
    fill_in "Name", with: @document_state_rel.name
    fill_in "Obs", with: @document_state_rel.obs
    click_on "Create Document state rel"

    assert_text "Document state rel was successfully created"
    click_on "Back"
  end

  test "updating a Document state rel" do
    visit document_state_rels_url
    click_on "Edit", match: :first

    fill_in "Date", with: @document_state_rel.date
    fill_in "Description", with: @document_state_rel.description
    fill_in "Document", with: @document_state_rel.document_id
    fill_in "Document state", with: @document_state_rel.document_state_id
    fill_in "Name", with: @document_state_rel.name
    fill_in "Obs", with: @document_state_rel.obs
    click_on "Update Document state rel"

    assert_text "Document state rel was successfully updated"
    click_on "Back"
  end

  test "destroying a Document state rel" do
    visit document_state_rels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document state rel was successfully destroyed"
  end
end
