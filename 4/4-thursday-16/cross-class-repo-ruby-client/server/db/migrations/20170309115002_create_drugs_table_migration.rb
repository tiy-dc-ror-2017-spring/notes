class CreateDrugsTableMigration < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.date :approved_on
    end
  end
end
