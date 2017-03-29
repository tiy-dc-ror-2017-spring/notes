class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :crew_count
      t.float :peripasis
      t.float :aposis
      t.float :max_fuel
      t.float :current_fuel
      t.string :country_code

      t.timestamps
    end
  end
end
