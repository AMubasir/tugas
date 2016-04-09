class CreateMobils < ActiveRecord::Migration
  def change
    create_table :mobils do |t|
      t.string :nama
      t.string :merk
      t.string :warna
      t.string :harga
      t.boolean :keterangan

      t.timestamps null: false
    end
  end
end
