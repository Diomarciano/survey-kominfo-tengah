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

ActiveRecord::Schema.define(version: 20180609141329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "survey_forms", force: :cascade do |t|
    t.string   "side_id"
    t.string   "alamat"
    t.string   "kelurahan"
    t.string   "kecamatan"
    t.string   "kabupaten"
    t.string   "provinsi"
    t.float    "lattide"
    t.float    "longitude"
    t.string   "sumber_listrik"
    t.datetime "jam_operasional"
    t.string   "id_pelanggan_listrik"
    t.string   "kapasitas"
    t.string   "jenis_koneksi"
    t.string   "bandwidt_tersedia"
    t.string   "jenis_koneksi_1"
    t.string   "nama_operator_seluler"
    t.string   "kualitas_layanan"
    t.string   "jumlah_komputer"
    t.string   "perangkat_pendukung_lainnya"
    t.string   "nama_penanggung_jawab_lokasi_1"
    t.string   "kontak_penanggung_jawab_lokasi_1"
    t.string   "nama_penanggung_jawab_lokasi_2"
    t.string   "kontak_penanggung_jawab_lokasi_2"
    t.string   "transportasi_menuju_lokasi"
    t.text     "gambaran_menuju_lokasi"
    t.string   "kualitas_akses_internet"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "lainnya_listrik"
    t.string   "lainnya_internet"
    t.string   "keterangan_menuju_lokasi"
    t.string   "image_gedung_file_name"
    t.string   "image_gedung_content_type"
    t.integer  "image_gedung_file_size"
    t.datetime "image_gedung_updated_at"
    t.string   "image_rencana_tempat_perangkat_file_name"
    t.string   "image_rencana_tempat_perangkat_content_type"
    t.integer  "image_rencana_tempat_perangkat_file_size"
    t.datetime "image_rencana_tempat_perangkat_updated_at"
    t.string   "image_genset_file_name"
    t.string   "image_genset_content_type"
    t.integer  "image_genset_file_size"
    t.datetime "image_genset_updated_at"
    t.string   "image_lingkungan_depan_file_name"
    t.string   "image_lingkungan_depan_content_type"
    t.integer  "image_lingkungan_depan_file_size"
    t.datetime "image_lingkungan_depan_updated_at"
    t.string   "image_lingkungan_belakang_file_name"
    t.string   "image_lingkungan_belakang_content_type"
    t.integer  "image_lingkungan_belakang_file_size"
    t.datetime "image_lingkungan_belakang_updated_at"
    t.string   "image_lingkungan_kiri_file_name"
    t.string   "image_lingkungan_kiri_content_type"
    t.integer  "image_lingkungan_kiri_file_size"
    t.datetime "image_lingkungan_kiri_updated_at"
    t.string   "image_lingkungan_kanan_file_name"
    t.string   "image_lingkungan_kanan_content_type"
    t.integer  "image_lingkungan_kanan_file_size"
    t.datetime "image_lingkungan_kanan_updated_at"
    t.string   "image_akses_ke_site_file_name"
    t.string   "image_akses_ke_site_content_type"
    t.integer  "image_akses_ke_site_file_size"
    t.datetime "image_akses_ke_site_updated_at"
    t.string   "image_akses_ke_site_1_file_name"
    t.string   "image_akses_ke_site_1_content_type"
    t.integer  "image_akses_ke_site_1_file_size"
    t.datetime "image_akses_ke_site_1_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
