class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to :action => :show, :id => @user.id
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to :action => :show, :id => @user.id
        else
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to :action => :index
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
