class UsersController < ApplicationController
  def new
	@user = User.new
  end
  # action for new.html submit
  def create
  	@user = User.new(params[:user])
  	# MOBILE registration
  	# interacting w the user to let him know that the reg is succ
  	render :file => "users/registration_result.json.erb", :content_type => 'application/json'
	
	## WEB REGISTRAION
#  	if @user.save
#  		flash[:status] = TRUE
#  		flash[:alert] = 'Congrates'
#  	else
#  		flash[:status] = FALSE
#  		flash[:alert] = @user.errors.full_messages
# 	end
#  	redirect_to register_path 	
  end
end
