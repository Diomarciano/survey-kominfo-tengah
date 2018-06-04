class CreateSurveyForms < ActiveRecord::Migration
  def change
    create_table :survey_forms do |t|
      t.string :side_id
      t.string :alamat
      t.string :kelurahan
      t.string :kecamatan
      t.string :kabupaten
      t.string :provinsi
      t.float :lattide
      t.float :longitude
      t.string :sumber_listrik
      t.datetime :jam_operasional
      t.string :id_pelanggan_listrik
      t.string :kapasitas
      t.string :jenis_koneksi
      t.string :bandwidt_tersedia
      t.string :jenis_koneksi_1
      t.string :nama_operator_seluler
      t.string :kualitas_layanan
      t.string :jumlah_komputer
      t.string :perangkat_pendukung_lainnya
      t.string :nama_penanggung_jawab_lokasi_1
      t.string :kontak_penanggung_jawab_lokasi_1
      t.string :nama_penanggung_jawab_lokasi_2
      t.string :kontak_penanggung_jawab_lokasi_2
      t.string :transportasi_menuju_lokasi
      t.text :gambaran_menuju_lokasi
      t.string :kualitas_akses_internet

      t.timestamps null: false
    end
  end
end
