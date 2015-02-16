class CreateSkus < ActiveRecord::Migration
  def change
    create_table :skus do |t|
      t.integer :order_id
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end
