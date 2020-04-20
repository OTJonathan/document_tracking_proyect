class DocumentsController < ApplicationController
  def index
      @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def show
    @document = Document.find(params[:id])
    @document_states = DocumentStateRel.where(document_id:params[:id])
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to :action => :show, :id => @document.id
    else
      render 'edit'
    end
  end

def edit
  @document = Document.find(params[:id])
end

def update
  @document = Document.find(params[:id])
  if @document.update_attributes(document_params)
    redirect_to :action => :show, :id => @document.id
  else
    render 'edit'
  end
end

def destroy
  @document = Document.find(params[:id])
  @document.destroy
  redirect_to :action => :index
end

  private
  def document_params
    params.require(:document).permit(:document_type_id, :doc_code, :supplier_id, :user_id, :date_emission, :date_due, :description, :total_amount, :obs)
  end
end
