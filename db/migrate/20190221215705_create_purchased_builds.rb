class CreatePurchasedBuilds < ActiveRecord::Migration[5.2]
  def change
    create_table :purchased_builds do |t|
      t.integer :build_price
      t.integer :build_quantity
      t.references :build, foreign_key: true
      t.string :build_name
      t.text :build_description
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
