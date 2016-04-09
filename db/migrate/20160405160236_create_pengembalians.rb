class CreatePengembalians < ActiveRecord::Migration
  def change
    create_table :pengembalians do |t|
    	t.references :transaksi_id, index: true, foreign_key: true
    	t.date :jatuh_tempo_pengembalian
    	t.string :terlambat
    	t.float :denda
    	t.float :total_pembayaran
    	t.float :dibayar
    	t.string :keterangan

      t.timestamps null: false
    end
  end
end
