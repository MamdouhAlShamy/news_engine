require './app/controllers/stories_parser.rb'

class WelcomeController < ApplicationController
	def details ##
		@details = Story.where(["story_id = ?", params[:id]])[0]
		if @details.relate1 != 0
			@related1_story = Story.where(["story_id = ?", @details.relate1])[0]
			@related2_story = Story.where(["story_id = ?", @details.relate2])[0]
		end
		render :file => "welcome/details.json.erb", :content_type => 'application/json'
	end
	
	def index
		@headlines = Story.find(:all)
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def parse
		# temp trial to get providers
		@Categories  = Category.find(:all)
		@Categories.each_with_index do |category|
			getStories(category.rss_url, category.provider_id, category.category_id)
		break
		end
	end
	
	def parseCategory#
		# temp trial to get providers
		@Category  = Category.find(params[:id])
		@list_of_story_ids_added = getStories(@Category.rss_url, @Category.provider_id, @Category.category_id)
	end
	
	def category
		#@Categories = Category.find(:all)
		@Categories = Category.where(["provider_id = ?", 1]) #d
		render :file => "welcome/categories.json.erb", :content_type => 'application/json'
	end

	# getHeadlines from Category from DB
	def getNewsOfCategory
		@headlines = Story.where(["category_id = ?", params[:id]])
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def getListOfProviders
		@Providers = Provider.find(:all)
		render :file => "welcome/providers.json.erb", :content_type => 'application/json'
	end
end
