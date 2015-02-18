class OrderSku < ActiveRecord::Base
	belongs_to :order
	has_many :skus, through: :order_skus

	# accepts_nested_attributes_for :orders, :skus
end