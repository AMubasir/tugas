class Mod::SessionsController < Mod::ApplicationController
	before_action :authorize, except: [:new, :create]

  def new
  end

  def create
  	@admin = Admin.find_by(username: params[:username]).try(:authenticate, params[:password])
  	if @admin
  		session[:current_admin_id] = @admin.id
  		redirect_to mod_admins_url, notice: 'Anda telah berhasil login seabgai admin'
  	else
  		flash[:alert] = 'Maaf username/ password yang anda masukan salah !'
  		render :new
  	end
  end

  def destroy
  	session[:current_admin_id] = nil
  	redirect_to '/login', notice: 'Anda telah berhasil log out dari halaman admin'
  end
end
