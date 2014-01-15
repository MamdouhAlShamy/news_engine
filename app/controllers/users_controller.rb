class UsersController < ApplicationController
  def new
	@user = User.new
  end
  # action for new.html submit
  def createMobile
  	@user = User.new(params[:user], last_update_time: DateTime.yesterday.iso8601)
  	if @user.save
  		# set LastUpdate to yesterday
  		#password = @user.password
  		#puts password
  		@user.update(last_update_time: DateTime.yesterday.iso8601)
  		#@user.update(password: password)
  	end
  	# MOBILE registration
  	# interacting w the user to let him know that the reg is succ w json response 
  	render :file => "users/registration_result.json.erb", :content_type => 'application/json' 	
  end

## WEB REGISTRAION  
  def create
	@user = User.new(params[:user])
  	if @user.save
  		flash[:status] = TRUE
  		flash[:alert] = 'Congrates'
  		# set LastUpdate to yesterday
  		@user.update(last_update_time: DateTime.yesterday.iso8601)
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @user.errors.full_messages
 	end
  	redirect_to register_path
	end
	
	def getUsers
		@users = User.find(:all)
		render :file => "users/users.json.erb", :content_type => 'application/json'
	end
end
