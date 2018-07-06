class FormBaratsController < ApplicationController
  before_action :set_form_barat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_member!, :except => [:index, :show]
  before_action :job_owner, only: [:edit, :update, :destroy]


  # GET /form_barats
  # GET /form_barats.json
  def index
    @form_barats = FormBarat.all
    if params[:search]
      @form_barats = FormBarat.search(params[:search]).order("created_at DESC").page(params[:page]).per_page(20)
    else
      @form_barats = FormBarat.all.order('created_at DESC').page(params[:page]).per_page(20)
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
  @form_barat = FormBarat.find(params[:id])
  @member = current_member
  form_barats = current_member.form_barats
  @members = @member.form_barats
  end

  def job_owner
     unless @form_barat.member_id == current_member.id
      flash[:notice] = 'Access denied as you are not owner of this Job'
      redirect_to wilayah_barat_mydata_path
     end
    end

  def barat_mydata
    @member = current_member
    form_barats = current_member.form_barats
    @members = @member.form_barats
    #@form_barats = FormBarat.all
  end

  # POST /form_barats
  # POST /form_barats.json
  def create
    #@form_barat = FormBarat.new(form_barat_params)
    @form_barat = current_member.form_barats.create(form_barat_params)


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
      params.require(:form_barat).permit(:side_id, :nama_site_id,:alamat, :kelurahan, :kecamatan, :kabupaten, :provinsi, :lattide, :longitude, :jam_operasional, :id_pelanggan_listrik, :kapasitas, :lainnya_internet, :bandwidt_tersedia, :nama_operator_seluler, :kualitas_layanan, :jumlah_komputer, :perangkat_pendukung_lainnya, :nama_penanggung_jawab_lokasi_1, :kontak_penanggung_jawab_lokasi_1, :nama_penanggung_jawab_lokasi_2, :kontak_penanggung_jawab_lokasi_2, :keterangan_menuju_lokasi, :catatan_tambahan, :gambaran_menuju_lokasi, :surveyor, :project, :perangkat_lainnya,:kualitas_akses_internet, :photo_sketsa, :image_gedung, :image_rencana_tempat_perangkat, :image_genset, :image_lingkungan_depan, :image_lingkungan_belakang, :image_lingkungan_kiri, :image_lingkungan_kanan, :image_akses_ke_site, :image_akses_ke_site_1, :image_geotagging, :image_surveyor,jenis_koneksi_1:[], sumber_listrik:[], jenis_koneksi:[], transportasi_menuju_lokasi:[])
    end
end
