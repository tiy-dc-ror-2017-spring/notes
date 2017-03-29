class CreateCrews < ActiveRecord::Migration[5.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :country_code
      t.string :job_title
      t.references :station, foreign_key: true
      t.datetime :launch_at

      t.timestamps
    end
  end
end
