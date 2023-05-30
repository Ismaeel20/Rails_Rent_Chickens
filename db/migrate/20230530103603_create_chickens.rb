class CreateChickens < ActiveRecord::Migration[7.0]
  def change
    create_table :chickens do |t|
      t.string :breed
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
