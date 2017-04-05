Rails.application.routes.draw do
  post 'cart/add_product'

  resources :products

  root 'homepage#index'
end
