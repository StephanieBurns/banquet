class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         belongs_to :order

         attr_accessor :roles

         ROLES = %w[admin customer]


	def is?(role)
	  roles.include?(role.to_s)
	end

end