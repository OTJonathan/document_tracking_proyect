class SuppliersController < ApplicationController
    def index
        @suppliers = Supplier.all
    end

    def new
        @supplier = Supplier.new
    end

    def show
        @supplier = Supplier.find(params[:id])
    end

    def create
        @supplier = Supplier.new(supplier_params)
        if @supplier.save
            redirect_to :action => :show, :id => @supplier.id
        else
            render :new
        end
    end

    def edit
        @supplier = Supplier.find(params[:id])
    end

    def update
        @supplier = Supplier.find(params[:id])
        if @suppliers.update_attributes(supplier_params)
            redirect_to :action => :show, :id => @supplier.id
        else
            render 'edit'
        end
    end

    def destroy
        @supplier = Supplier.find(params[:id])
        @supplier.destroy
        redirect_to :action => :index
    end

    private
    def supplier_params
        params.require(:supplier).permit(:name, :doc_ident, :street, :email, :mobile)
    end
end
