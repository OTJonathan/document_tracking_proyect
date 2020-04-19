class ApplicationController < ActionController::Base

    before_action :set_cache_buster
    before_action :authorized
	helper_method :current_user
	helper_method :logged_in?

	def current_user    
    	User.find_by(id: session[:user_id])  
	end

	def logged_in?   
    	!current_user.nil?  
	end

	def authorized
    	redirect_to '/login' unless logged_in?
	end  

	private
	  def set_cache_buster
		response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
		response.headers["Pragma"] = "no-cache"
		response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
	  end
end
