require_relative "app_helper"

class App < Sinatra::Base
  get "/" do
    student = Student.all.to_a.sample
    if student
      "#{student.name} will answer!"
    else
      "Be more personable!"
    end
  end

  post "/students" do
    content_type "application/json"
    body Student.create(name: params["name"]).to_json
  end

  delete "/students/:name" do
    content_type "application/json"
    Student.where(name: params["name"]).destroy_all.to_json
  end

  run! if app_file == $PROGRAM_NAME
end
