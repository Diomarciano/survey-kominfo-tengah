class WilayahBaratsController < ApplicationController
  before_action :set_wilayah_barat, only: [:show, :edit, :update, :destroy]

  # GET /wilayah_barats
  # GET /wilayah_barats.json
  def index
    #@form_barats = FormBarat.all.where(provinsi:"Aceh")
    @form_barats = FormBarat.all
  end

  def aceh
    #@form_barats = FormBarat.all
    @form_barats = FormBarat.all.where(provinsi:"Aceh")
  end

  def sumatera_utara
    @form_barats = FormBarat.all.where(provinsi:"Sumatera Utara")
  end

  def riau
    @form_barats = FormBarat.all.where(provinsi:"Riau")
  end

  def kepulauan_riau
    @form_barats = FormBarat.all.where(provinsi:"Kepulauan Riau")
  end

  def sumatera_barat
    @form_barats = FormBarat.all.where(provinsi:"Sumatera_Barat")
  end

  def bengkulu
    @form_barats = FormBarat.all.where(provinsi:"Bengkulu")
  end

  def sumatera_selatan
    @form_barats = FormBarat.all.where(provinsi:"Sumatera Selatan")
  end

  def lampung
   @form_barats = FormBarat.all.where(provinsi:"Lampung")
  end

  def banten
    @form_barats = FormBarat.all.where(provinsi:"Banten")
  end
  
  def jawa_timur
    @form_barats = FormBarat.all.where(provinsi:"Jawa Timur")
  end
end
