class SocialController < ApplicationController
	def setStoryAsShared
		user_id = params[:user_id]
		story_id = params[:story_id]
		setStoryAsSharedCore(user_id, story_id)
	end

end
