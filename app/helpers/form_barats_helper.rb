module FormBaratsHelper

	def checked2(area)
		@form_barat.sumber_listrik.nil? ? false : @form_barat.sumber_listrik.match(area)
	end

	def checked3(area)
		@form_barat.transportasi_menuju_lokasi.nil? ? false : @form_barat.transportasi_menuju_lokasi.match(area)
	end
end
