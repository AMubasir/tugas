class Transaksi < ActiveRecord::Base
  belongs_to :admin
  belongs_to :mobil
  belongs_to :pelanggan
  
end
