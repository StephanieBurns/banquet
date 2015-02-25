class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :order_skus
         has_many :orders

         attr_accessor :roles

         ROLES = %w[admin customer]


	def is?(role)
	  roles.include?(role.to_s)
	end

end