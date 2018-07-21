class PagesController < ApplicationController
  def index
	   @survey_forms = SurveyForm.all

    @form_barats = FormBarat.all
    @hash = Gmaps4rails.build_markers(@form_barats) do |form_barat, marker|
    marker.lat form_barat.lattide
    marker.lng form_barat.longitude
    marker.infowindow form_barat.alamat
    end
  end
end
