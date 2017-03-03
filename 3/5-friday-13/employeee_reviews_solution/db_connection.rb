require "active_record"

##
# See every SQL Command sent to the DB adapter
# ActiveRecord::Base.logger = Logger.new(STDOUT)

##
# Turn off messages around migrations (reverting/creating tables)
ActiveRecord::Migration.verbose = false

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "employees_reviews_database.db"
)

class CreateDepartmentsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :departments do |t|
      t.string :name
    end
  end

  def down
    drop_table :departments
  end
end

begin
  CreateDepartmentsTable.migrate(:down)
rescue ActiveRecord::StatementInvalid
end
CreateDepartmentsTable.migrate(:up)

class CreateEmployeesTable < ActiveRecord::Migration[5.0]

  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
      t.boolean :satisfactory
      t.integer :department_id
    end
  end
end
begin
  CreateEmployeesTable.migrate(:down)
rescue ActiveRecord::StatementInvalid
end
CreateEmployeesTable.migrate(:up)
