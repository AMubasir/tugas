class Admin < ActiveRecord::Base
	has_secure_password

	has_many :transaksis

	validates :nama_lengkap, presence: true
	validates :username, presence: true, format: {with: /@/, message: 'is not valid'}
	validates :password, presence: true
end