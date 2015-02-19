class Order < ActiveRecord::Base
	has_many :order_skus

	has_many :skus, through: :order_skus
	accepts_nested_attributes_for :skus, allow_destroy: true
end
