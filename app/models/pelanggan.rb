class Pelanggan < ActiveRecord::Base
	has_many :transaksis

	def self.matching search
		where("nama LIKE ? OR alamat LIKE ?", "%#{search}%", "%#{search}%")
	end
end
