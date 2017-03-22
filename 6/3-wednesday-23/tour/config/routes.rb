Rails.application.routes.draw do
  # get 'bookings/index', controller: "bookings", action: "index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get "/", controller: "welcome", action: "homepage"

  get "/bookings", controller: "bookings", action: "index"
  get "/bookings/new", controller: "bookings", action: "new"

  post "/bookings", controller: "bookings", action: "create"
end
