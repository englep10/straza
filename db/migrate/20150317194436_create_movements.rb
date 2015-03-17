class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :title
      t.string :location
      t.integer :time
      t.text :description
      t.string :movement_key
      t.timestamps null: false
    end
  end
end
