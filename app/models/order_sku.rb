class OrderSku < ActiveRecord::Base
	belongs_to :order
	belongs_to :sku
	belongs_to :user

	# accepts_nested_attributes_for :orders, :skus
end