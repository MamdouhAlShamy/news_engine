class User < ActiveRecord::Base
	require 'digest/md5'
	has_many :reads
    has_many :stories, through: :reads
	
	# atrr_accessible allows insertion into db via mass assignment
	attr_accessible :email, :first_name, :last_name, :password, :mobile_no, :last_update_time
	before_create :encrypt_password
	
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
	
	def self.validate_login(email, password)
		user = User.find_by_email(email)
		
		if user && user.password == Digest::MD5.hexdigest(password)
			user
		else
			nil
		end
	end
end
