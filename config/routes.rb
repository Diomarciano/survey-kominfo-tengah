Rails.application.routes.draw do

  devise_for :users, path: 'users'
  resources :form_barats 
  
  root :to => "pages#index"

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

  resources :users do
    resources :survey_forms
  end
end
