class CreateMods < ActiveRecord::Migration[5.2]
  def change
    create_table :mods do |t|
      t.string :part
      t.string :brand
      t.string :size
      t.string :color
      t.integer :year
      t.string :condition
      t.integer :quantity
      t.references :jeep, foreign_key: true
      t.references :user, foreign_key: true
      t.references :build, foreign_key: true
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
