class Mod::AdminsController < Mod::ApplicationController
	def index
		@admins = Admin.all
	end

	def edit
		@admin = Admin.find(params[:id])
	end

	def update
		@admin = Admin.find(params[:id])
		
		if @admin.update(admin_params)
			flash[:notice] = "Data telah sukses di perbarui"
			redirect_to mod_admins_url
		else
			flash[:alert] = "Maaf terjadi kesalahan ketika memasukan data"
			render 'edit'
		end
	end

	private

	def admin_params
		params.require(:admin).permit(:id, :nama_lengkap, :username, :password)
	end
end