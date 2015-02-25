class Order < ActiveRecord::Base
	has_many :order_skus

	has_many :skus, through: :order_skus

	belongs_to :user
	
	accepts_nested_attributes_for :skus, allow_destroy: true
end
