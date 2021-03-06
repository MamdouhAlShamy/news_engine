require './app/controllers/stories_parser.rb'
require './app/controllers/core_methods.rb'

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
		@headlines = Story.where(["created_at > ?", DateTime.yesterday.iso8601]).order(created_at: :desc).limit(50)
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def parse
		# temp trial to get providers
		@Categories  = Category.find(:all)
		@Categories.each_with_index do |category|
			getStories(category.rss_url, category.provider_id, category.category_id)
		#break
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
		@headlines = Story.where(["category_id = ?", params[:id]]).order(created_at: :desc).limit(50)
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	# get news from category ordered w providers
	def	getCategoryOrderedByProviders
		requested_priority = params[:priority].split(",")
		puts requested_priority
		cat = params[:category_id]
		@headlines = []
#		, :id, requested_priority[0],requested_priority[1],requested_priority[2]
		#Story.connection.execute("SET @cat_id = 0;")
		
		# OLD WAY
		#sql_string = "SELECT * FROM stories WHERE stories.category_id = #{cat} ORDER BY case provider_id when #{requested_priority[0]} then 1 when #{requested_priority[1]} then 2 when #{requested_priority[2]} then 3 else 4 end, created_at DESC Limit 50;"
		#@headlines = Story.find_by_sql(%Q{SELECT * FROM stories where category_id=2 ORDER BY case provider_id when 3 then 1 when 2 then 2 when 1 then 3 else 4 end; })
		#@headlines = Story.find_by_sql(sql_string)
		
		# NEW WAY
		for i in requested_priority
			sql_string = "SELECT * FROM stories WHERE stories.category_id = #{cat} and provider_id = #{i}
ORDER By created_at DESC limit 20;"
		 	#@story = Story.find_by_sql(sql_string)
		 	@story = Story.where(["category_id = #{cat} and provider_id = #{i}"]).order(created_at: :desc).limit(20)
		 	puts @story.class.name
			for @s in @story
				@headlines << @s
			end
		end

		
		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def getListOfProviders
		@Providers = Provider.find(:all)
		render :file => "welcome/providers.json.erb", :content_type => 'application/json'
	end
	
	def getRecentStories
		@headlines = Story.where(["category_id = ?", params[:category_id]]).order(created_at: :desc).limit(50)
  		render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
	end
	
	def setStoryRead
		story_id = params[:story_id]
		user_id = params[:user_id]
		@read = Read.create(user_id: user_id, story_id: story_id)
		render :file => "sessions/read.json.erb", :content_type => 'application/json'
		
	end
	
	def follow
		user_id = params[:user_id]
		me_id = params[:iam]
		@result = Follow.create(me: me_id, light: user_id)
		render :file => "sessions/follow.json.erb", :content_type => 'application/json'
	end
	
	def getStoriesReadByUsersIFollow
		me_id = params[:me]
		getStoriesReadByUsersIFollowCore(me_id)
	end
	
end
