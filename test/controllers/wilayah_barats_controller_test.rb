require 'test_helper'

class WilayahBaratsControllerTest < ActionController::TestCase
  setup do
    @wilayah_barat = wilayah_barats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wilayah_barats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wilayah_barat" do
    assert_difference('WilayahBarat.count') do
      post :create, wilayah_barat: {  }
    end

    assert_redirected_to wilayah_barat_path(assigns(:wilayah_barat))
  end

  test "should show wilayah_barat" do
    get :show, id: @wilayah_barat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wilayah_barat
    assert_response :success
  end

  test "should update wilayah_barat" do
    patch :update, id: @wilayah_barat, wilayah_barat: {  }
    assert_redirected_to wilayah_barat_path(assigns(:wilayah_barat))
  end

  test "should destroy wilayah_barat" do
    assert_difference('WilayahBarat.count', -1) do
      delete :destroy, id: @wilayah_barat
    end

    assert_redirected_to wilayah_barats_path
  end
end
