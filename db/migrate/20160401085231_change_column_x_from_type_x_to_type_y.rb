class ChangeColumnXFromTypeXToTypeY < ActiveRecord::Migration
  	def up
		change_column :pelanggans, :jenis_kelamin,  :string
	end

	def down
		change_column :pelanggans, :jenis_kelamin,  :boolean
	end
end
