class CreateJeeps < ActiveRecord::Migration[5.2]
  def change
    create_table :jeeps do |t|
      t.string :model
      t.integer :year
      t.text :description
      t.string :color
      t.string :location
      t.string :vin
      t.string :condition
      t.references :user, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
