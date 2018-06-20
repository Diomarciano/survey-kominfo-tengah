class SurveyForm < ActiveRecord::Base

	before_save do
		self.sumber_listrik.gsub!(/[\[\]\"]/,"") if attribute_present?("sumber_listrik")
	end

	has_attached_file :image_gedung, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_gedung, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_rencana_tempat_perangkat, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_rencana_tempat_perangkat, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_genset, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_genset, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_depan, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_lingkungan_depan, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_belakang, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_lingkungan_belakang, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_kiri, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_lingkungan_kiri, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_lingkungan_kanan, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_lingkungan_kanan, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_akses_ke_site, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_akses_ke_site, content_type: /\Aimage\/.*\z/

  	has_attached_file :image_akses_ke_site_1, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image_akses_ke_site_1, content_type: /\Aimage\/.*\z/



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
