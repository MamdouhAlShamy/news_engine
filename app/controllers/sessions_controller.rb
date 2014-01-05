class SessionsController < ApplicationController
  before_filter :check_login, :only => [:index]
  def new
  end
  
  def create
  	user = User.validate_login(
  	params[:session][:email],
  	params[:session][:password]
  	)
  	## WEB LOGIN
  	# if user entered correct login info redirect him to his page
  	if user
  		session[:user_id] = user.id
  		redirect_to :controller => 'users'
  	else
  		flash[:status] = FALSE
  		flash[:alert] = "Invalid username and password"
  		redirect_to login_path
  	end
  end
  
  ## MOBILE LOGIN
  def createMobile
    @user = User.validate_login(
  	params[:session][:email],
  	params[:session][:password]
  	)
  	if @user
  		session[:user_id] = @user.id
  	end
  	render :file => "sessions/login_result.json.erb", :content_type => 'application/json'
  end
  
  def destroy
  	session[:user_id] = nil
 	redirect_to login_path	
  end
  
  # UpdateRate
  def getUpdateToUserDateCategoryHeadlines
  	user_id = session[:user_id]
  	user = User.find_by(id: user_id)
  	puts user.last_update_time
  	
  	@headlines = Story.where(["created_at > ? and category_id = ?", user.last_update_time, params[:category_id]])
  	render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
  	
  	  	## set user's last_update_time to current time, it changes password !!!
  	#user.last_update_time = DateTime.now
  	#user.save
  	user.update(last_update_time: DateTime.now)

  end
end
