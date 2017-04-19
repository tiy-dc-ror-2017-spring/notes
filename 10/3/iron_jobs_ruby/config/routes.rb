Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  get "/api/jobs", controller: :jobs, action: :index
  get "/api/jobs/:id", controller: :jobs, action: :show
end
