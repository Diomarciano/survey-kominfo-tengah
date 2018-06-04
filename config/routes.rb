Rails.application.routes.draw do

  resources :survey_forms
  root :to => "pages#index"
end
