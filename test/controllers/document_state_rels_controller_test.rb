require 'test_helper'

class DocumentStateRelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_state_rel = document_state_rels(:one)
  end

  test "should get index" do
    get document_state_rels_url
    assert_response :success
  end

  test "should get new" do
    get new_document_state_rel_url
    assert_response :success
  end

  test "should create document_state_rel" do
    assert_difference('DocumentStateRel.count') do
      post document_state_rels_url, params: { document_state_rel: { date: @document_state_rel.date, description: @document_state_rel.description, document_id: @document_state_rel.document_id, document_state_id: @document_state_rel.document_state_id, name: @document_state_rel.name, obs: @document_state_rel.obs } }
    end

    assert_redirected_to document_state_rel_url(DocumentStateRel.last)
  end

  test "should show document_state_rel" do
    get document_state_rel_url(@document_state_rel)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_state_rel_url(@document_state_rel)
    assert_response :success
  end

  test "should update document_state_rel" do
    patch document_state_rel_url(@document_state_rel), params: { document_state_rel: { date: @document_state_rel.date, description: @document_state_rel.description, document_id: @document_state_rel.document_id, document_state_id: @document_state_rel.document_state_id, name: @document_state_rel.name, obs: @document_state_rel.obs } }
    assert_redirected_to document_state_rel_url(@document_state_rel)
  end

  test "should destroy document_state_rel" do
    assert_difference('DocumentStateRel.count', -1) do
      delete document_state_rel_url(@document_state_rel)
    end

    assert_redirected_to document_state_rels_url
  end
end
