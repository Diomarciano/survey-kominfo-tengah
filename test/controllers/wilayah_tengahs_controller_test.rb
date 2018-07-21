require 'test_helper'

class WilayahTengahsControllerTest < ActionController::TestCase
  setup do
    @wilayah_tengah = wilayah_tengahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wilayah_tengahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wilayah_tengah" do
    assert_difference('WilayahTengah.count') do
      post :create, wilayah_tengah: {  }
    end

    assert_redirected_to wilayah_tengah_path(assigns(:wilayah_tengah))
  end

  test "should show wilayah_tengah" do
    get :show, id: @wilayah_tengah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wilayah_tengah
    assert_response :success
  end

  test "should update wilayah_tengah" do
    patch :update, id: @wilayah_tengah, wilayah_tengah: {  }
    assert_redirected_to wilayah_tengah_path(assigns(:wilayah_tengah))
  end

  test "should destroy wilayah_tengah" do
    assert_difference('WilayahTengah.count', -1) do
      delete :destroy, id: @wilayah_tengah
    end

    assert_redirected_to wilayah_tengahs_path
  end
end
