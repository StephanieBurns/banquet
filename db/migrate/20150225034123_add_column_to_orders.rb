class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :fulfilled, :boolean
  end
end
