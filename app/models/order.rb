class Order < ActiveRecord::Base
	has_many :skus
end
