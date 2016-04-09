class Mobil < ActiveRecord::Base
	has_many :transaksis

	validates :nama, presence: true
	validates :merk, presence: true
	validates :warna, presence: true
	validates :harga, presence: true

	def self.matching search
		where("nama LIKE ? OR merk LIKE ?", "%#{search}%", "%#{search}%")
	end
end
