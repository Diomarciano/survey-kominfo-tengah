class PagesController < ApplicationController
	def index
    @form_barats = FormBarat.all
    @survey_forms = SurveyForm.all
  end
end
