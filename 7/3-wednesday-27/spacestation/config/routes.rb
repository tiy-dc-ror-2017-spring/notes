Rails.application.routes.draw do
  resources :stations do
    resources :crews
  end
  root controller: :stations, action: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
