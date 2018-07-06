class SurveyForm < ActiveRecord::Base

  belongs_to :users
	before_save do
		self.sumber_listrik.gsub!(/[\[\]\"]/,"") if attribute_present?("sumber_listrik")
	end
  
  before_save do
    self.transportasi_menuju_lokasi.gsub!(/[\[\]\"]/,"") if attribute_present?("transportasi_menuju_lokasi")
  end

  before_save do
    self.jenis_koneksi.gsub!(/[\[\]\"]/,"") if attribute_present?("jenis_koneksi")
  end

  before_save do
    self.jenis_koneksi_1.gsub!(/[\[\]\"]/,"") if attribute_present?("jenis_koneksi_1")
  end

	  has_attached_file :image_gedung
  	validates_attachment_content_type :image_gedung, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_rencana_tempat_perangkat
  	validates_attachment_content_type :image_rencana_tempat_perangkat, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_genset
  	validates_attachment_content_type :image_genset, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_depan
  	validates_attachment_content_type :image_lingkungan_depan, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_belakang
  	validates_attachment_content_type :image_lingkungan_belakang, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_kiri
  	validates_attachment_content_type :image_lingkungan_kiri, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_kanan
  	validates_attachment_content_type :image_lingkungan_kanan, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_akses_ke_site
  	validates_attachment_content_type :image_akses_ke_site, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_akses_ke_site_1
  	validates_attachment_content_type :image_akses_ke_site_1, content_type: /\Aimage\/.*\z/

    has_attached_file :photo_sketsa
    validates_attachment_content_type :photo_sketsa, content_type: /\Aimage\/.*\z/

    has_attached_file :image_geotagging
    validates_attachment_content_type :image_geotagging, content_type: /\Aimage\/.*\z/

    has_attached_file :image_surveyor
    validates_attachment_content_type :image_surveyor, content_type: /\Aimage\/.*\z/

    has_attached_file :image_tambahan_photo_1
    validates_attachment_content_type :image_tambahan_photo_1, content_type: /\Aimage\/.*\z/

    validates_presence_of :alamat, :kelurahan, :kecamatan, :kabupaten, :provinsi, :lattide, :longitude, :jumlah_komputer, :nama_penanggung_jawab_lokasi_1, :kontak_penanggung_jawab_lokasi_1, :nama_penanggung_jawab_lokasi_2, :kontak_penanggung_jawab_lokasi_2, :catatan_tambahan,:gambaran_menuju_lokasi, :surveyor, :project, :transportasi_menuju_lokasi, :message => "Tidak Boleh Kosong" 

    def self.search(search)
      where("lower(kabupaten) LIKE ? OR lower(kecamatan) LIKE ? OR lower(provinsi) LIKE ?", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%") 
    end

    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |survey_form|
          csv << survey_form.attributes.values_at(*column_names)
        end
      end
    end
   
end
