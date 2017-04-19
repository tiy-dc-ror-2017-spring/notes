class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :link
      t.text :note

      t.timestamps
    end
  end
end
