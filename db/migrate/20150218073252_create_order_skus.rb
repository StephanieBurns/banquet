class CreateOrderSkus < ActiveRecord::Migration
  def change
    create_table :order_skus do |t|
    t.integer :order_id
    t.integer :sku_id
    t.integer :price
    t.integer :cogs
    t.timestamps null: false
  	end
  end
end
