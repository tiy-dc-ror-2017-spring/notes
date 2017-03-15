require "sinatra"
require_relative "weather"

# Expose my laptop to everyone on the current network (YOU DO NOT NEED)
set :bind, "0.0.0.0"

# Painful, ruby in strings
get "/" do
  numbers = (1..100).to_a.shuffle

  p_tags = ""
  numbers.each do |number|
    p_tags += "<p>#{number}</p>"
  end

  "<h1>Hello World</h1>
  <p><time>#{Time.now}</time></p>
  <nav>
    <a href=\"https://www.lmgtfy.com\">Google</a>
  </nav>
  #{p_tags}
  "
end

# Add an route that will render ERB, or ruby inside of html.
get "/erb" do
  @numbers = (1..100).to_a.shuffle

  # ERB.new(File.read("./erb-example.html.erb")).result(binding)

  # MUST BE A SYMBOL OTHERWISE YOU HAVE TO DO THE FILE.read
  erb :"erb-example.html"
end

# Handle a form submissions
post '/profile' do
  params["github_username"]
  # https://api.github.com/users/rposborne/repos
  # go get json, for this person repos

  erb :"profile.html"
end

# Removed in favor of the public directory
# get "/styles.css" do
#   content_type "text/css"
#   File.read("./views/styles.css")
# end
