class CreateJoinTableOrderSku < ActiveRecord::Migration
  def change
    create_join_table :orders, :skus do |t|
      t.index [:order_id, :sku_id]
      # t.index [:sku_id, :order_id]
    end
  end
end
