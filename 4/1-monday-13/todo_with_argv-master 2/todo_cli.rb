require_relative "task"
require_relative "db_connection"

class TodoCli
  attr_reader :args
  def initialize(args)
    @args = args

    # Extract the "subcommand"
    case @args.first
    when "complete"
      complete_task(@args[1])
    when "list"
      show_pending_tasks
    when "create"
      create_task
    when "reset"
      require_relative "create_tasks_table_migration"
      begin
          CreateTasksTableMigration.migrate(:down)
      rescue
      end
      CreateTasksTableMigration.migrate(:up)
    else
      puts "No Command Found!!!"
    end
  end

  def show_pending_tasks
    Task.all.each do |task|
      puts "#{task.id}: #{task.name}"
    end
  end

  def create_task
    Task.create(name: @args[1])
    puts "Task Created: #{@args[1]}"
  end

  def complete_task(task_id)
    task = Task.find(task_id)
    task.completed_at = Time.now
    task.save

    puts "Task Completed: #{task.name}"
  end
end
