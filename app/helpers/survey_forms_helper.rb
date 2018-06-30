module SurveyFormsHelper

	def checked(area)
		@survey_form.sumber_listrik.nil? ? false : @survey_form.sumber_listrik.match(area)
	end

	def checked1(area)
		@survey_form.jenis_koneksi.nil? ? false : @survey_form.jenis_koneksi.match(area)
	end

	def checked2(area)
		@survey_form.transportasi_menuju_lokasi.nil? ? false : @survey_form.transportasi_menuju_lokasi.match(area)
	end
end
