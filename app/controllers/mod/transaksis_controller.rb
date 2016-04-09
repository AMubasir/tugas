class Mod::TransaksisController < Mod::ApplicationController
  def index
    if params[:search].present?
      @transaksis = Transaksi.matching(params[:search]).page params[:page]
    else
      @transaksis = Transaksi.all.order(id: :asc).page params[:page]
    end
  end

  def new
    @transaksi = Transaksi.new
  end

  def create
    @transaksi = Transaksi.new(transaksi_params)

    if @transaksi.save
      redirect_to mod_transaksis_url, notice: 'Data telah berhasil ditambahkan'
    else
      flash[:alert] = 'Anda harus mengisi semua kolom yang tersedia !'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def transaksi_params
    params.require(:transaksi).permit(:id, :admin_id, :mobil_id, :pelanggan_id, 
      :lama_sewa, :tanggal_sewa, :tanggal_kembali, :total_bayar, :uang_muka, :sisa_bayar, :keterangan)
  end

end
