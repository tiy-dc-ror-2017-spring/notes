require "active_record"
require "pry"
require_relative "rocket"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "space.db"
)

class CreateRocketsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :rockets do |t|
      # Long Hand
      t.column :name, :string
      t.column :number_of_engines, :integer

      # Short Hand
      t.string :maker
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def down
    drop_table :rockets
  end

  # def change
  # end
end

begin
  CreateRocketsTable.migrate(:down)
rescue ActiveRecord::StatementInvalid
end
CreateRocketsTable.migrate(:up)

binding.pry

puts "That's all folks"
