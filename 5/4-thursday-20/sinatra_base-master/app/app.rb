require_relative "dependencies"

class App < Sinatra::Base
  set :method_override, true

  get "/" do
    erb :'home.html'
  end

  # events #####################################################################
  get "/events" do
    @events = Event.all
    binding.pry
    erb :"events.html"
  end

  # carafes ####################################################################
  get "/carafes" do
    @carafes = Carafe.all
    erb :'carafes.html'
  end

  get "/carafes/new" do
    erb :'new_carafe.html'
  end

  post "/carafes" do
    Carafe.create(params)

    redirect to("/carafes")
  end

  get "/carafes/:id/edit" do
    @carafe = Carafe.find(params["id"])

    erb :"edit_carafe.html"
  end

  patch "/carafes/:id" do
    @carafe = Carafe.find(params["id"])
    @carafe.update(params["carafe"])

    redirect to("/carafes")
  end

  delete "/carafes/:id" do
    @carafe = Carafe.find(params["id"])
    @carafe.destroy

    redirect to("/carafes")
  end

  run! if app_file == $PROGRAM_NAME
end
