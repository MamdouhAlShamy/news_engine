class UsersController < ApplicationController
  def new
	@user = User.new
  end
  # action for new.html submit
  def createMobile
  	@user = User.new(params[:user])
  	if @user.save
  		# set LastUpdate to yesterday
  		@user.update(LastUpdateTime: DateTime.yesterday.iso8601)
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
  		@user.update(LastUpdateTime: DateTime.yesterday.iso8601)
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @user.errors.full_messages
 	end
  	redirect_to register_path
	end
end
