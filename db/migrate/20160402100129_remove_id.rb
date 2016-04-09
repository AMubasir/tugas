class RemoveId < ActiveRecord::Migration
  def change
  	remove_column :transaksis, :admin_id_id, :integer
  	rename_column :transaksis, :mobil_id_id, :mobil_id
  	rename_column :transaksis, :pelanggan_id_id, :pelanggan_id
  end
end
