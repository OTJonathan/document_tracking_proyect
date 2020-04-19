class SessionController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
   redirect_to '/welcome' unless !logged_in?
  end

  def create
  	@user = User.find_by(name: params[:name])
   
   if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
   else
      redirect_to '/login'
   end
  end

  def login
   redirect_to '/welcome' unless !logged_in?
  end

  def destroy
   reset_session
   redirect_to root_path
  end
  
  def page_requires_login
  end

  def welcome
      @users = User.all
      @suppliers = Supplier.all
      @documents = Document.all
  end
end
