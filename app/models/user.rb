class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	has_many :comments
	has_many :flats
	
	def fullname
		a = f_name + ' ' + l_name
		b = a.titleize
		return b
	end

end
