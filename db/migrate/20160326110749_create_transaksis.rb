class CreateTransaksis < ActiveRecord::Migration
  def change
    create_table :transaksis do |t|
      t.references :admin_id, index: true, foreign_key: true
      t.references :mobil_id, index: true, foreign_key: true
      t.references :pelanggan_id, index: true, foreign_key: true
      t.integer :lama_sewa
      t.date :tanggal_sewa
      t.date :tanggal_kembali
      t.float :total_bayar

      t.timestamps null: false
    end
  end
end
