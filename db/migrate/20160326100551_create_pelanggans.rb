class CreatePelanggans < ActiveRecord::Migration
  def change
    create_table :pelanggans do |t|
      t.string :nama
      t.string :alamat
      t.boolean :jenis_kelamin
      t.integer :no_telp

      t.timestamps null: false
    end
  end
end
