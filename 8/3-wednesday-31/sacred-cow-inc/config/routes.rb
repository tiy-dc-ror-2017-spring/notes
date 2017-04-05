Rails.application.routes.draw do
  resources :products
  
  root 'homepage#index'
end
