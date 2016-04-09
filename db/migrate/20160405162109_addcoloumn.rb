class Addcoloumn < ActiveRecord::Migration
  def change
  	add_column :transaksis, :keterangan, :string
  end
end
