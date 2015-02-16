class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.date :party_date
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
