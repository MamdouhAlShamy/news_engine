require './app/controllers/stories_parser.rb'

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
		news_provider = "http://www.almasryalyoum.com/rss_feed_term/223241/rss.xml"
		g = getStories(news_provider, 1, 1)
	end
	
	def category
		@Categories = Category.find(:all)
		render :file => "welcome/categories.json.erb", :content_type => 'application/json'
	end
end
