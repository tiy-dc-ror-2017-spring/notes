class WelcomeController < ApplicationController
  def homepage
    binding.pry
    render "homepage"
  end
end
