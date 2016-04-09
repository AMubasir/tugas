class RenamePng < ActiveRecord::Migration
  def change
  	rename_column :pengembalians, :transaksi_id_id, :transaksi_id
  end
end
