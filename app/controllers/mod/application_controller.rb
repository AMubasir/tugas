class Mod::ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

  	layout 'mod'
  	
	before_action :authorize

	def current_admin
		@admin ||= Admin.find(session[:current_admin_id]) if session[:current_admin_id]
	end

	def authorize
		unless current_admin
			redirect_to '/login', alert: 'Silahkan login untuk mengakses halaman admin !'
		end
	end
end