class FormBaratsController < ApplicationController
  before_action :set_form_barat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_member!

  # GET /form_barats
  # GET /form_barats.json
  def index
    @form_barats = FormBarat.all
    if params[:search]
      @form_barats = FormBarat.search(params[:search]).order("id ASC").page(params[:page]).per_page(20)
    else
      @form_barats = FormBarat.all.order('id ASC').page(params[:page]).per_page(20)
    end

    respond_to do |format|
      format.html
      format.csv { send_data @form_barats.to_csv }
      format.xls { send_data @form_barats.to_csv(col_sep: "\t") }
    end
  end

  # GET /form_barats/1
  # GET /form_barats/1.json
  def show
  end

  # GET /form_barats/new
  def new
    @form_barat = FormBarat.new
  end

  # GET /form_barats/1/edit
  def edit
  end

  # POST /form_barats
  # POST /form_barats.json
  def create
    @form_barat = FormBarat.new(form_barat_params)

    respond_to do |format|
      if @form_barat.save
        format.html { redirect_to form_barats_path, notice: 'Form barat was successfully created.' }
        format.json { render :show, status: :created, location: @form_barat }
      else
        format.html { render :new }
        format.json { render json: @form_barat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_barats/1
  # PATCH/PUT /form_barats/1.json
  def update
    respond_to do |format|
      if @form_barat.update(form_barat_params)
        format.html { redirect_to form_barats_path, notice: 'Form barat was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_barat }
      else
        format.html { render :edit }
        format.json { render json: @form_barat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_barats/1
  # DELETE /form_barats/1.json
  def destroy
    @form_barat.destroy
    respond_to do |format|
      format.html { redirect_to form_barats_url, notice: 'Form barat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_barat
      @form_barat = FormBarat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_barat_params
      params.require(:form_barat).permit(:side_id, :alamat, :kelurahan, :kecamatan, :kabupaten, :provinsi, :lattide, :longitude, :jam_operasional, :id_pelanggan_listrik, :kapasitas, :jenis_koneksi, :lainnya_internet, :bandwidt_tersedia, :jenis_koneksi_1, :nama_operator_seluler, :kualitas_layanan, :jumlah_komputer, :perangkat_pendukung_lainnya, :nama_penanggung_jawab_lokasi_1, :kontak_penanggung_jawab_lokasi_1, :nama_penanggung_jawab_lokasi_2, :kontak_penanggung_jawab_lokasi_2, :catatan_tambahan,:gambaran_menuju_lokasi, :nama_site_id, :surveyor, :project, :perangkat_lainnya,:kualitas_akses_internet, sumber_listrik:[], transportasi_menuju_lokasi:[])
    end
end
