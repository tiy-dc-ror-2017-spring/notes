class AddEventIdToCarafesTableMigration < ActiveRecord::Migration[5.0]
  def change
    add_column :carafes, :event_id, :integer
  end
end
