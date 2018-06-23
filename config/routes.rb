Rails.application.routes.draw do

  devise_for :members, path: 'members'
  devise_for :users, path: 'users'
  resources :form_barats 
  
  root :to => "pages#index"

  resources :survey_forms
end
