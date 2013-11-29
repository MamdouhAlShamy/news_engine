class WelcomeController < ApplicationController
	def show
		@details = Story.find(params[:id])
		render :file => "welcome/details.json.erb", :content_type => 'application/json'
	end
	
	def index
		@headlines = Story.find(:all)
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def parse
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def category
		@Categories = Category.find(:all)
		render :file => "welcome/categories.json.erb", :content_type => 'application/json'
	end
end
