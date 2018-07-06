class SurveyFormsController < ApplicationController
  before_action :set_survey_form, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :job_owner_tengah, only: [:edit, :update, :destroy]
  
  # GET /survey_forms
  # GET /survey_forms.json
  def index
    @survey_forms = SurveyForm.all
    if params[:search]
      @survey_forms = SurveyForm.search(params[:search]).order("created_at DESC").page(params[:page]).per_page(20)
    else
      @survey_forms = SurveyForm.all.order('created_at DESC').page(params[:page]).per_page(20)
    end

    respond_to do |format|
      format.html
      format.csv { send_data @survey_forms.to_csv }
      format.xls { send_data @survey_forms.to_csv(col_sep: "\t") }
    end
  end

  # GET /survey_forms/1
  # GET /survey_forms/1.json
  def show
  end

  # GET /survey_forms/new
  def new
    @survey_form = SurveyForm.new
  end

  # GET /survey_forms/1/edit
  def edit
    @user = current_user
    survey_forms = current_user.survey_forms
    @users = @user.survey_forms
  end

  def job_owner_tengah
     unless @survey_form.user_id == current_user.id
      flash[:notice] = 'Access denied as you are not owner of this Job'
      redirect_to wilayah_tengah_mydata_path
     end
    end

   def tengah_mydata
    @user = current_user
    survey_forms = current_user.survey_forms
    @users = @user.survey_forms
    #@form_barats = FormBarat.all
  end

  # POST /survey_forms
  # POST /survey_forms.json
  def create
    @survey_form = SurveyForm.new(survey_form_params)
    @survey_form = current_user.survey_forms.create(survey_form_params)
    
    respond_to do |format|
      if @survey_form.save
        format.html { redirect_to survey_forms_path, notice: 'Survey form was successfully created.' }
        format.json { render :show, status: :created, location: @survey_form }
      else
        format.html { render :new }
        format.json { render json: @survey_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_forms/1
  # PATCH/PUT /survey_forms/1.json
  def update
    respond_to do |format|
      if @survey_form.update(survey_form_params)
        format.html { redirect_to survey_forms_path, success: 'Survey form was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_form }
      else
        format.html { render :edit }
        format.json { render json: @survey_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_forms/1
  # DELETE /survey_forms/1.json
  def destroy
    @survey_form.destroy
    respond_to do |format|
      format.html { redirect_to survey_forms_url, notice: 'Survey form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_form
      @survey_form = SurveyForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_form_params
      params.require(:survey_form).permit(:side_id, :nama_site_id, :alamat, :kelurahan, :kecamatan, :kabupaten, :provinsi, :lattide, :longitude, :jam_operasional, :id_pelanggan_listrik, :kapasitas, :lainnya_internet, :bandwidt_tersedia, :nama_operator_seluler, :kualitas_layanan, :jumlah_komputer, :perangkat_pendukung_lainnya, :nama_penanggung_jawab_lokasi_1, :kontak_penanggung_jawab_lokasi_1, :nama_penanggung_jawab_lokasi_2, :kontak_penanggung_jawab_lokasi_2, :keterangan_menuju_lokasi, :catatan_tambahan, :gambaran_menuju_lokasi, :surveyor, :project, :perangkat_lainnya,:kualitas_akses_internet, :photo_sketsa, :image_gedung, :image_rencana_tempat_perangkat, :image_genset, :image_lingkungan_depan, :image_lingkungan_belakang, :image_lingkungan_kiri, :image_lingkungan_kanan, :image_akses_ke_site, :image_akses_ke_site_1, :image_geotagging, :image_surveyor, jenis_koneksi_1:[],  sumber_listrik:[], jenis_koneksi:[], transportasi_menuju_lokasi:[])
    end
end
