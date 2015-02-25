class AddColumnToOrderSkus < ActiveRecord::Migration
  def change
    add_column :order_skus, :user_id, :integer
  end
end
