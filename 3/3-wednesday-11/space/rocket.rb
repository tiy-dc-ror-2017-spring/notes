require "active_record"

class Rocket < ActiveRecord::Base

  def name
    self["name"].upcase
  end

  def launch!
    "🚀" * number_of_engines
  end

  def number_of_engines
    self["number_of_engines"] || 0
  end
end
