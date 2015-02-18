class DropOrdersSkus < ActiveRecord::Migration
  def change
    drop_table :orders_skus
  end
end
