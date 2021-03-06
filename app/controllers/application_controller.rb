class ApplicationController < ActionController::Base
	add_flash_types :success, :warning, :danger, :info, :active
	helper_method :current_user 

	def current_user 
		@current_user ||= User.find(session[:user_id]) if session[:user_id] 
	end

	def require_user 
		redirect_to '/login' unless current_user 
	end
end
