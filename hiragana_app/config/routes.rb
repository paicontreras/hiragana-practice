Rails.application.routes.draw do
  resources :translations

  root 'translations#index'
end
