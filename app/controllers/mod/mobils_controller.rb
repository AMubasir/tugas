class Mod::MobilsController < Mod::ApplicationController
  def index
    if params[:search].present?
      @mobils = Mobil.matching(params[:search]).page params[:page]
    else
      @mobils = Mobil.all.order(id: :desc).page params[:page]
    end
  end

  def new
    @mobil = Mobil.new
  end

  def create
    @mobil = Mobil.new(mobil_params)

    if @mobil.save
      redirect_to mod_mobils_url, notice: 'Data telah berhasil ditambahkan'
    else
      flash[:alert] = 'Anda harus mengisi semua kolom yang tersedia !'
      render :new
    end
  end

  def edit
    @mobil = Mobil.find(params[:id])
  end

  def update
    @mobil = Mobil.find(params[:id])
    if @mobil.update(mobil_params)
      redirect_to mod_mobils_url, notice: 'Data telah berhasil di edit'
    else
      flash[:alert] = "There was a problem updating post"
      render :edit
    end
  end

  def show
    @mobil = Mobil.find(params[:id])
  end

  def destroy
    @mobil = Mobil.find(params[:id])
    @mobil.destroy

    redirect_to :back, notice: 'Data telah berhasil di hapus'
  end

  private

  def mobil_params
  params.require(:mobil).permit(:id, :nama, :merk, :warna, :harga, :keterangan )
  end

end
