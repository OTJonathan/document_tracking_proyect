class DocumentStateRelsController < ApplicationController
  before_action :set_document_state_rel, only: [:show, :edit, :update, :destroy]

  # GET /document_state_rels
  # GET /document_state_rels.json
  def index
    @document_state_rels = DocumentStateRel.all
  end

  # GET /document_state_rels/1
  # GET /document_state_rels/1.json
  def show
  end

  # GET /document_state_rels/new
  def new
    @document = Document.find(params[:document_id])
    @document_state_rel = DocumentStateRel.new
  end

  # GET /document_state_rels/1/edit
  def edit
  end

  # POST /document_state_rels
  # POST /document_state_rels.json
  def create
    @document_state_rel = DocumentStateRel.new(document_state_rel_params)

    respond_to do |format|
      if @document_state_rel.save
        format.html { redirect_to @document_state_rel, notice: 'Document state rel was successfully created.' }
        format.json { render :show, status: :created, location: @document_state_rel }
      else
        format.html { render :new }
        format.json { render json: @document_state_rel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_state_rels/1
  # PATCH/PUT /document_state_rels/1.json
  def update
    respond_to do |format|
      if @document_state_rel.update(document_state_rel_params)
        format.html { redirect_to @document_state_rel, notice: 'Document state rel was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_state_rel }
      else
        format.html { render :edit }
        format.json { render json: @document_state_rel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_state_rels/1
  # DELETE /document_state_rels/1.json
  def destroy
    @document_state_rel.destroy
    respond_to do |format|
      format.html { redirect_to document_state_rels_url, notice: 'Document state rel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_state_rel
      @document_state_rel = DocumentStateRel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def document_state_rel_params
      params.require(:document_state_rel).permit(:date, :name, :description, :obs, :user_id, :document_id, :document_state_id)
    end
end
