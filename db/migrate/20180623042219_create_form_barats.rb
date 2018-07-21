class CreateFormBarats < ActiveRecord::Migration
  def change
    create_table :form_barats do |t|
      t.string :side_id
      t.string :alamat
      t.string :kelurahan
      t.string :kecamatan
      t.string :kabupaten
      t.string :provinsi
      t.float :lattide
      t.float :longitude
      t.string :sumber_listrik
      t.string :jam_operasional
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
      t.string :lainnya_listrik
  	  t.string :lainnya_internet
  	  t.string :keterangan_menuju_lokasi
  	  t.string :nama_site_id
  	  t.string :surveyor
  	  t.string :project
  	  t.string :perangkat_lainnya
  	  t.string :catatan_tambahan

      t.timestamps null: false
    end
  end
end
