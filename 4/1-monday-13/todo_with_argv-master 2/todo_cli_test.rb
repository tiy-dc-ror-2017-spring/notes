require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require_relative "todo_cli"
require_relative "create_tasks_table_migration"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "test.db"
)

class TodoCliTest < Minitest::Test
  def setup
    CreateTasksTableMigration.migrate(:up)
  end

  def teardown
    CreateTasksTableMigration.migrate(:down)
  end

  # Assert that the the code output to the terminal the text inbetween //
  #
  # This is a simple REGEX
  #
  # A regex literal is defined with text inbewteen two /regex/
  def test_can_create_task
    assert_output(/Task Created:/) do
      TodoCli.new(["create", "i am a task"])
    end
  end

  # def test_can_complete_a_task
  #   task = Task.create(name: "Learn me some rubbies!")
  #   commands = ["complete", task.id]
  #
  #   assert_output(/Task Completed:/) do
  #     TodoCli.new(commands)
  #   end
  #
  #   task.reload
  #   assert task.completed_at
  # end
end
