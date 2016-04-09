class Mod::PelanggansController < Mod::ApplicationController
  def index
    if params[:search].present?
      @pelanggans = Pelanggan.matching(params[:search]).page params[:page]
    else
      @pelanggans = Pelanggan.all.order(id: :asc).page params[:page]
    end
  end

  def new
    @pelanggan = Pelanggan.new
  end

  def create
    @pelanggan = Pelanggan.new(pelanggan_params)

    if @pelanggan.save
      redirect_to mod_pelanggans_url, notice: 'Data telah berhasil ditambahkan'
    else
      flash[:alert] = 'Anda harus mengisi semua kolom yang tersedia !'
      render :new
    end
  end

  def show
    @pelanggan = Pelanggan.find(params[:id])
  end

  def edit
    @pelanggan = Pelanggan.find(params[:id])
  end

  def update
    @pelanggan = Pelanggan.find(params[:id])
    if @pelanggan.update(pelanggan_params)
      redirect_to mod_pelanggans_url, notice: 'Data telah berhasil di edit'
    else
      flash[:alert] = "There was a problem updating post"
      render :edit
    end
  end

  def destroy
    @pelanggan = Pelanggan.find(params[:id])
    @pelanggan.destroy

    redirect_to :back, notice: 'Data telah berhasil di hapus'
  end

  private

  def pelanggan_params
  params.require(:pelanggan).permit(:id, :nama, :alamat, :jenis_kelamin, :no_telp)
  end

end
