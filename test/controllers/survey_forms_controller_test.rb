require 'test_helper'

class SurveyFormsControllerTest < ActionController::TestCase
  setup do
    @survey_form = survey_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_form" do
    assert_difference('SurveyForm.count') do
      post :create, survey_form: { alamat: @survey_form.alamat, bandwidt_tersedia: @survey_form.bandwidt_tersedia, gambaran_menuju_lokasi: @survey_form.gambaran_menuju_lokasi, id_pelanggan_listrik: @survey_form.id_pelanggan_listrik, jam_operasional: @survey_form.jam_operasional, jenis_koneksi: @survey_form.jenis_koneksi, jenis_koneksi_1: @survey_form.jenis_koneksi_1, jumlah_komputer: @survey_form.jumlah_komputer, kabupaten: @survey_form.kabupaten, kapasitas: @survey_form.kapasitas, kecamatan: @survey_form.kecamatan, kelurahan: @survey_form.kelurahan, kontak_penanggung_jawab_lokasi_1: @survey_form.kontak_penanggung_jawab_lokasi_1, kontak_penanggung_jawab_lokasi_2: @survey_form.kontak_penanggung_jawab_lokasi_2, kualitas_akses_internet: @survey_form.kualitas_akses_internet, kualitas_layanan: @survey_form.kualitas_layanan, lattide: @survey_form.lattide, longitude: @survey_form.longitude, nama_operator_seluler: @survey_form.nama_operator_seluler, nama_penanggung_jawab_lokasi_1: @survey_form.nama_penanggung_jawab_lokasi_1, nama_penanggung_jawab_lokasi_2: @survey_form.nama_penanggung_jawab_lokasi_2, perangkat_pendukung_lainnya: @survey_form.perangkat_pendukung_lainnya, provinsi: @survey_form.provinsi, side_id: @survey_form.side_id, sumber_listrik: @survey_form.sumber_listrik, transportasi_menuju_lokasi: @survey_form.transportasi_menuju_lokasi }
    end

    assert_redirected_to survey_form_path(assigns(:survey_form))
  end

  test "should show survey_form" do
    get :show, id: @survey_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_form
    assert_response :success
  end

  test "should update survey_form" do
    patch :update, id: @survey_form, survey_form: { alamat: @survey_form.alamat, bandwidt_tersedia: @survey_form.bandwidt_tersedia, gambaran_menuju_lokasi: @survey_form.gambaran_menuju_lokasi, id_pelanggan_listrik: @survey_form.id_pelanggan_listrik, jam_operasional: @survey_form.jam_operasional, jenis_koneksi: @survey_form.jenis_koneksi, jenis_koneksi_1: @survey_form.jenis_koneksi_1, jumlah_komputer: @survey_form.jumlah_komputer, kabupaten: @survey_form.kabupaten, kapasitas: @survey_form.kapasitas, kecamatan: @survey_form.kecamatan, kelurahan: @survey_form.kelurahan, kontak_penanggung_jawab_lokasi_1: @survey_form.kontak_penanggung_jawab_lokasi_1, kontak_penanggung_jawab_lokasi_2: @survey_form.kontak_penanggung_jawab_lokasi_2, kualitas_akses_internet: @survey_form.kualitas_akses_internet, kualitas_layanan: @survey_form.kualitas_layanan, lattide: @survey_form.lattide, longitude: @survey_form.longitude, nama_operator_seluler: @survey_form.nama_operator_seluler, nama_penanggung_jawab_lokasi_1: @survey_form.nama_penanggung_jawab_lokasi_1, nama_penanggung_jawab_lokasi_2: @survey_form.nama_penanggung_jawab_lokasi_2, perangkat_pendukung_lainnya: @survey_form.perangkat_pendukung_lainnya, provinsi: @survey_form.provinsi, side_id: @survey_form.side_id, sumber_listrik: @survey_form.sumber_listrik, transportasi_menuju_lokasi: @survey_form.transportasi_menuju_lokasi }
    assert_redirected_to survey_form_path(assigns(:survey_form))
  end

  test "should destroy survey_form" do
    assert_difference('SurveyForm.count', -1) do
      delete :destroy, id: @survey_form
    end

    assert_redirected_to survey_forms_path
  end
end
