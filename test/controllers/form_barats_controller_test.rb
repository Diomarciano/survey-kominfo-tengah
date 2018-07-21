require 'test_helper'

class FormBaratsControllerTest < ActionController::TestCase
  setup do
    @form_barat = form_barats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_barats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_barat" do
    assert_difference('FormBarat.count') do
      post :create, form_barat: { side_id: @form_barat.side_id }
    end

    assert_redirected_to form_barat_path(assigns(:form_barat))
  end

  test "should show form_barat" do
    get :show, id: @form_barat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_barat
    assert_response :success
  end

  test "should update form_barat" do
    patch :update, id: @form_barat, form_barat: { side_id: @form_barat.side_id }
    assert_redirected_to form_barat_path(assigns(:form_barat))
  end

  test "should destroy form_barat" do
    assert_difference('FormBarat.count', -1) do
      delete :destroy, id: @form_barat
    end

    assert_redirected_to form_barats_path
  end
end
