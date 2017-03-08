ENV["RACK_ENV"] = "test"
require "pry"
require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require "rack/test"

require_relative "../app"
require_relative "../student"
require_relative "../db/connection"
require_relative "../db/migrations/1_create_students_table"

begin
  CreateStudentsTable.migrate(:down)
rescue ActiveRecord::StatementInvalid
end
CreateStudentsTable.migrate(:up)
