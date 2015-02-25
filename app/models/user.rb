class User < ActiveRecord::Base
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         

         attr_accessor :roles

         ROLES = %w[admin customer]


	def is?(role)
	  roles.include?(role.to_s)
	end

end