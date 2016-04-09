# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = Admin.create(
	nama_lengkap: "Ashar Mubasir",
	username: "ekicenx@gmail.com",
	password: "1234")

30.times do
mobil = Mobil.create(
	nama: Faker::Commerce.product_name,
	merk: Faker::Company.suffix,
	warna: Faker::Commerce.color,
	harga: Faker::Commerce.price,
	keterangan: true)
end
