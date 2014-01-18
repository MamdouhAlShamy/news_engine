

def getStoiresReadByUsersIFollowCore(me_id)
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
	
	# Priority
	# I want to sort read_story_ids_list desc by the number of occurance
	sorted_read_story_ids = []
	story_ids_occ_dict = Hash.new
	# get occurance
	for a in read_story_ids_list
		story_ids_occ_dict[a] = read_story_ids_list.count(a)
	end
	# sort
	sorted_dic = story_ids_occ_dict.sort_by { |id, occ| occ*-1 } # desc

	# getting story_id sorted desc
	for i in sorted_dic
		sorted_read_story_ids << i[0] # remove dublicate story_ids
	end

	#puts sorted_read_story_ids
	
	#puts read_story_ids_list
	@headlines = []
	puts @headlines.class.name
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
	
def setStoryAsSharedCore(user_id, story_id)
	@share = Share.create(user_id: user_id, story_id: story_id)
	render :file => "social/share.json.erb", :content_type => 'application/json'
end
