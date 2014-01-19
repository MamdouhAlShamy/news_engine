
def getStoriesReadByUsersIFollowCore(me_id)
	# GET Stories
	users_i_follow = Follow.select("light").where(["me = ?", me_id])
	read_story_ids_list = []
	for user in users_i_follow
		 reads = Read.where(["user_id = ?", user["light"].to_s])
		 for @read in reads
		 	#puts @read.story_id
		 	#puts @read.class.name
		 	read_story_ids_list << @read.story_id
		 end			
	end
	
	# PRIORITY
	sorted_read_story_ids = storiesPriorityEngine(read_story_ids_list)
	#puts sorted_read_story_ids
	
	# VIEW
	@headlines = []
	#puts @headlines.class.name
	for story_id in sorted_read_story_ids
		@story = Story.where(["story_id = ?", story_id.to_s])[0]
		#puts @story.class.name
		@headlines << @story
	end
	#puts @headlines.class.name
	#for @h in @headlines
	#	puts @h.class.name
	#	puts @h["story_id"]
	#end
	
	render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
end

def getStoriesSharedByUsersIFollowCore(me_id)
	# GET shared stories from User I follow
	users_i_follow = Follow.select("light").where(["me = ?", me_id])
	shared_story_ids_list = []
	for user in users_i_follow
		 shared_stories = Share.where(["user_id = ?", user["light"].to_s])
		 for @shared_story in shared_stories
		 	#puts @shared_story.story_id
		 	#puts @shared_story.class.name
		 	shared_story_ids_list << @shared_story.story_id
		 end			
	end
	
	# PRIORITY
	sorted_shared_story_ids = storiesPriorityEngine(shared_story_ids_list)
	#puts sorted_read_story_ids
	
	# VIEW
	@headlines = []
	#puts @headlines.class.name
	for story_id in sorted_shared_story_ids
		@story = Story.where(["story_id = ?", story_id.to_s])[0]
		#puts @story.class.name
		@headlines << @story
	end
	
	render :file => "welcome/headlines.json.erb", :content_type => 'application/json'
end

def storiesPriorityEngine(story_ids_list)
	# I want to sort story_ids_list desc by the number of occurance
	sorted_story_ids = []
	story_ids_occ_dict = Hash.new
	# get occurance
	for a in story_ids_list
		story_ids_occ_dict[a] = story_ids_list.count(a)
	end
	# sort
	sorted_dic = story_ids_occ_dict.sort_by { |id, occ| occ*-1 } # desc

	# getting story_id sorted desc
	for i in sorted_dic
		sorted_story_ids << i[0] # remove dublicate story_ids
	end
	return sorted_story_ids
end

	
def setStoryAsSharedCore(user_id, story_id)
	@share = Share.create(user_id: user_id, story_id: story_id)
	render :file => "social/share.json.erb", :content_type => 'application/json'
end

def getUsersrFollowedByMeCore(me_id)
	@users_i_follow = Follow.select("light").where(["me = ?", me_id])
	@users = []
	for @user_i_follow in @users_i_follow
		puts @user_i_follow.class.name
		@user = User.where(["id = ?", @user_i_follow.light])[0]
		puts @user.class.name
		@users << @user
	end	
	render :file => "users/users.json.erb", :content_type => 'application/json'
end
