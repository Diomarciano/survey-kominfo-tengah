class PagesController < ApplicationController
  def index
	   @survey_forms = SurveyForm.all

    end
end
