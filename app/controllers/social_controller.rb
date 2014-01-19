require './app/controllers/core_methods.rb'
class SocialController < ApplicationController
	def new
	end
	
	def setStoryAsShared
		user_id = params[:user_id]
		story_id = params[:story_id]
		setStoryAsSharedCore(user_id, story_id)
	end
	
	def getStoriesSharedByUsersIFollow
		me_id = params[:me]
		getStoriesSharedByUsersIFollowCore(me_id)
	end

end
