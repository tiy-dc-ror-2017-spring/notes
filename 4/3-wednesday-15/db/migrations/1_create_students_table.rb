require "active_record"

class CreateStudentsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
    end
  end
end
