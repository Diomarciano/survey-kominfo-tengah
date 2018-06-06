module SurveyFormsHelper

	def checked(area)
		@survey_form.sumber_listrik.nil? ? false : @survey_form.sumber_listrik.match(area)
	end
end
