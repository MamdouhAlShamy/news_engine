class User < ActiveRecord::Base
	require 'digest/md5'
	
	# atrr_accessible allows insertion into db via mass assignment
	attr_accessible :email, :first_name, :last_name, :password, :mobile_no
	before_save :encrypt_password
	
	# VALIDATIONS
	validates :first_name,
		:presence => TRUE,
		:length => {:minimum => 2, :allow_blank => TRUE}
	
	validates :last_name,
		:presence => TRUE,
		:length => {:minimum => 2, :allow_blank => TRUE}
	
	validates :password,
		:presence => TRUE,
		:length => {:minimum => 6, :allow_blank => TRUE},
		:confirmation => TRUE
	
	validates :email,
		:presence => TRUE,
		:uniqueness => TRUE
	
	def encrypt_password
		self.password = Digest::MD5.hexdigest(password)
	end
end