class WilayahTengahsController < ApplicationController
  before_action :set_wilayah_tengah, only: [:show, :edit, :update, :destroy]

  # GET /wilayah_tengahs
  # GET /wilayah_tengahs.json
  def index
    @survey_forms = SurveyForm.all
  end

  def gorontalo
    @survey_forms = SurveyForm.all.where(provinsi:"Gorontalo")
  end

  def kalimantan_barat
    #@survey_forms = SurveyForm.all
     @survey_forms = SurveyForm.all.where(provinsi:"Kalimantan Barat")
  end

  def kalimantan_selatan
    @survey_forms = SurveyForm.all.where(provinsi:"Kalimantan Selatan")
  end

  def kalimantan_timur
    @survey_forms = SurveyForm.all.where(provinsi:"Kalimantan Timur")
  end

  def kalimantan_utara
    @survey_forms = SurveyForm.all.where(provinsi:"Kalimantan Utara")
  end

  def nusa_tenggara_timur
    @survey_forms = SurveyForm.all.where(provinsi:"Nusa Tenggara Timur")
  end

  def nusa_tenggara_barat
    @survey_forms = SurveyForm.all.where(provinsi:"Nusa Tenggara Barat")
  end

  def sulawesi_tengah
    @survey_forms = SurveyForm.all.where(provinsi:"Sulawesi Tengah")
  end

  def sulawesi_tenggara
    @survey_forms = SurveyForm.all.where(provinsi:"Sulawesi Tenggara")
  end
end
