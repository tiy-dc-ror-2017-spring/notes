class CreateCarafesTableMigration < ActiveRecord::Migration[5.0]
  def change
    create_table :carafes do |t|
      t.string :name
      t.float :max_volume
      t.float :current_volume
    end
  end
end
