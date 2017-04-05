class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :unit_price_in_cents
      t.string :name
      t.text :description
      t.string :picture_url

      t.timestamps
    end
  end
end
