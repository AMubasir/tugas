class Addcolumntransaksi < ActiveRecord::Migration
  def change
  	add_column :transaksis, :uang_muka, :float
  	add_column :transaksis, :sisa_bayar, :float
  end
end
