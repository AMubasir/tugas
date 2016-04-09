# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160405162413) do

  create_table "admins", force: :cascade do |t|
    t.string   "nama_lengkap"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mobils", force: :cascade do |t|
    t.string   "nama"
    t.string   "merk"
    t.string   "warna"
    t.float    "harga"
    t.boolean  "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pelanggans", force: :cascade do |t|
    t.string   "nama"
    t.string   "alamat"
    t.string   "jenis_kelamin"
    t.integer  "no_telp"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pengembalians", force: :cascade do |t|
    t.integer  "transaksi_id"
    t.date     "jatuh_tempo_pengembalian"
    t.string   "terlambat"
    t.float    "denda"
    t.float    "total_pembayaran"
    t.float    "dibayar"
    t.string   "keterangan"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "pengembalians", ["transaksi_id"], name: "index_pengembalians_on_transaksi_id"

  create_table "transaksis", force: :cascade do |t|
    t.integer  "mobil_id"
    t.integer  "pelanggan_id"
    t.integer  "lama_sewa"
    t.date     "tanggal_sewa"
    t.date     "tanggal_kembali"
    t.float    "total_bayar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "uang_muka"
    t.float    "sisa_bayar"
    t.string   "keterangan"
  end

  add_index "transaksis", ["mobil_id"], name: "index_transaksis_on_mobil_id"
  add_index "transaksis", ["pelanggan_id"], name: "index_transaksis_on_pelanggan_id"

end
