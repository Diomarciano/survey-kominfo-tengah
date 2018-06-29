Rails.application.routes.draw do

  devise_for :members, path: 'members'
  devise_for :users, path: 'users'
  resources :form_barats 
  
  root :to => "pages#index"

  get 'wilayah_barat' => 'wilayah_barats#index'
  get 'wilayah_barat/aceh' => 'wilayah_barats#aceh'
  get 'wilayah_barat/sumaterautara' => 'wilayah_barats#sumatera_utara'
  get 'wilayah_barat/riau' => 'wilayah_barats#riau'
  get 'wilayah_barat/kepulauanriau' => 'wilayah_barats#kepulauan_riau'
  get 'wilayah_barat/sumaterabarat' => 'wilayah_barats#sumatera_barat'
  get 'wilayah_barat/bengkulu' => 'wilayah_barats#bengkulu'
  get 'wilayah_barat/sumateraselatan' => 'wilayah_barats#sumatera_selatan'
  get 'wilayah_barat/lampung' => 'wilayah_barats#lampung'
  get 'wilayah_barat/banten' => 'wilayah_barats#banten'
  get 'wilayah_barat/jawatimur' => 'wilayah_barats#jawa_timur'

  get 'wilayah_barat/mydata' => 'form_barats#barat_mydata'


  get 'wilayah_tengah' => 'wilayah_tengahs#index'
  get 'wilayah_tengah/gorontalo' => 'wilayah_tengahs#gorontalo'
  get 'wilayah_tengah/kalimantanbarat' => 'wilayah_tengahs#kalimantan_barat'
  get 'wilayah_tengah/kalimantanselatan' => 'wilayah_tengahs#kalimantan_selatan'
  get 'wilayah_tengah/kalimantantimur' => 'wilayah_tengahs#kalimantan_timur'
  get 'wilayah_tengah/kalimantanutara' => 'wilayah_tengahs#kalimantan_utara'
  get 'wilayah_tengah/nusatenggaratimur' => 'wilayah_tengahs#nusa_tenggara_timur'
  get 'wilayah_tengah/nusatenggarabarat' => 'wilayah_tengahs#nusa_tenggara_barat'
  get 'wilayah_tengah/sulawesitengah' => 'wilayah_tengahs#sulawesi_tengah'
  get 'wilayah_tengah/sulawesitenggara' => 'wilayah_tengahs#sulawesi_tenggara'

  get 'wilayah_tengah/mydata' => 'survey_forms#tengah_mydata'


  resources :survey_forms

  resources :members do
    resources :form_barats
  end

  resources :users do
    resources :survey_forms
  end
end
