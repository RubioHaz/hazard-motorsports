class CreateBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :builds do |t|
      t.references :user, foreign_key: true
      t.references :jeep, foreign_key: true
      t.references :purchased_item
      t.integer :quantity
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
