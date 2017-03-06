class CreateTasksTableMigration < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :priority, default: "normal"
      t.text :description
      # t.boolean :completed, default: false
      t.datetime :completed_at
      # t.datetime :created_at
      # t.datetime :updated_at

      t.timestamps
    end
  end
end
