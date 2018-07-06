module FormBaratsHelper

	def checked4(area)
		@form_barat.sumber_listrik.nil? ? false : @form_barat.sumber_listrik.match(area)
	end

	def checked5(area)
		@form_barat.jenis_koneksi.nil? ? false : @form_barat.jenis_koneksi.match(area)
	end

	def checked6(area)
		@form_barat.jenis_koneksi_1.nil? ? false : @form_barat.jenis_koneksi_1.match(area)
	end

	def checked7(area)
		@form_barat.transportasi_menuju_lokasi.nil? ? false : @form_barat.transportasi_menuju_lokasi.match(area)
	end



end