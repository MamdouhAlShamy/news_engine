class UsersController < ApplicationController
  def new
	@user = User.new
  end
  # action for new.html submit
  def create
  	@user = User.new(params[:user])
	print params[:user]
  	# interacting w the user to let him know that the reg is succ
  	if @user.save
  		flash[:status] = TRUE
  		flash[:alert] = 'Congrates'
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @user.errors.full_messages
  	end
  	
  	redirect_to register_path
  end
end
