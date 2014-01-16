=begin
the purpose it to give the RSS link and get from it title, image, details ,url and Id and store into DB
=end

## TODO Thinking about Factory pattern
## TODO DASH BOARD


require 'feedzirra'
require 'nokogiri'
require 'open-uri'

def getStories(news_provider, provider_id, category_id) 
	list_of_story_ids_added = []
	z = Feedzirra::Feed.fetch_and_parse(news_provider)
	if defined? z.entries
		puts news_provider
		for  entry in z.entries

			## Due to difference in urls
			if provider_id == 2 # Youm7
				story_id = entry.url.split(pattern="=")[-1]
			else
				story_id = entry.url.split(pattern="/")[-1]
			end
		
			## escape already existing story
			if Story.exists?(:story_id => story_id) #>
				next
			end
		
			image_details_and_related = getImageUrlAndDetails(entry.url, provider_id, category_id, FALSE)
			time = 	entry.published.to_s.split(" UTC")[0]
			#puts story_id
			#puts entry.published
	
	### To test the parser from Terminal		
	#		puts story_id
	#		puts entry.url
	#		puts entry.title
	#		puts image_details_and_related[0]	# image url
	#		puts image_details_and_related[1]	# details
	#		puts image_details_and_related[2]	# related 1
	#		puts image_details_and_related[3]	# related 2
	#		puts time
	
			## Save into DB
			Story.create(:story_id => story_id, :provider_id => provider_id, :category_id => category_id, :title => entry.title, :details => image_details_and_related[1], :img => image_details_and_related[0], :url => entry.url,:created_at => time, :updated_at => time, :relate1 => image_details_and_related[2], :relate2 => image_details_and_related[3]) #>
	

			list_of_story_ids_added.push(story_id)
			#break	
		end
	
	
		return list_of_story_ids_added
	end
end



## made to get the info from stroy from its internal page(detailed)
def getStory(url, provider_id, category_id, b_related)
 	# Story Id
 	if provider_id == 2 # Youm7
		story_id = url.split(pattern="=")[-1]
	else
		story_id = url.split(pattern="/")[-1]
	end
	
	# not saving already exist story
	if Story.exists?(:story_id => story_id) #>
		return
	end
	
	# Image, Details and related
	image_details_and_related = getImageUrlAndDetails(url, provider_id, category_id, TRUE)
	
#	puts [story_id,
#			image_details_and_related[4],	# title
#	 		image_details_and_related[0],	# img	
#			image_details_and_related[1],	# details
#			image_details_and_related[2],	# related1
#			image_details_and_related[3]]	# related2

		Story.create(:story_id => story_id, :provider_id => provider_id, :category_id => category_id, :url => url, :title => image_details_and_related[4], :details => image_details_and_related[1], :img => image_details_and_related[0], :relate1 => image_details_and_related[2], :relate2 => image_details_and_related[3])
end


# b_related is made not to parse related stories of a related stroy
def getImageUrlAndDetails(story_url, provider_id, category_id, b_related)
	story_content_html = Nokogiri::HTML(open(story_url))
	
	## El Masry El Youm
	if provider_id == 1
	
		## Image Parsing
		begin
			image_div_id = "articleimg"
			image_url = story_content_html.css('div.'+ image_div_id).css('img').attribute('src').to_s
		rescue  
   			image_url = "" 
		end
	
		## Details Parsing
		# get div with id 'arabic-news'
		# from it get div class 'pane-content'
		details_div_id = "NewsStory"
		details = story_content_html.css('div#'+ details_div_id).text.strip
	#	puts details
	
		## Related Parse
		if !b_related
			begin
				related_div_class = "ret_post"
				related = story_content_html.css('div.'+ related_div_class).css('ul.side-nav a')
				related1_id = related[0]['href'].split(pattern="/")[-1]
				related2_id = related[1]['href'].split(pattern="/")[-1]
				# get info or related news
				getStory("http://www.almasryalyoum.com/news/details/"+related1_id,1, category_id, b_related)
				getStory("http://www.almasryalyoum.com/news/details/"+related2_id,1, category_id, b_related)
			rescue  
				# no related news found
				related1_id = 0
				related2_id = 0
			end
		# not getting related stories of a related one as it loop to almost infinity
		else
			related1_id = 0
			related2_id = 0
		end
		## Title Parse
		title = story_content_html.css('title').text.to_s.split(' | ')[0]
		
		return [image_url, details, related1_id, related2_id, title]
	
	## Youm7
	elsif provider_id == 2
		# Image Parsing
		begin
			image_div_id = "newsStoryImg"		
			image_url = story_content_html.css('div#'+image_div_id).css('img').attribute('src').to_s
		rescue  
   			image_url = "" 
		end
		# Details Parsing
		details_div_id = "newsStoryTxt"
		details = story_content_html.css('div#'+details_div_id).css('p').text.strip
		
		# Related Parsing
		## TODO
		# no related news found
		related1_id = 0
		related2_id = 0
		
		return [image_url, details, related1_id, related2_id]
		
	
	## El Watan
	elsif provider_id == 3
		# Image Parsing
		begin  
			image_div_class = "main_focus"		
			image_url = story_content_html.css('div.'+image_div_class).css('img').attribute('src').to_s
		rescue  
   			image_url = ""
		end 
		
		# Details Parsing
		details_div_class = "main_content_ip"
		details = story_content_html.css('div.'+details_div_class).css('p').text.strip

		# Related Parsing
		## TODO
		# no related news found
		related1_id = 0
		related2_id = 0
		
		return [image_url, details, related1_id, related2_id]
	end
end

#news_provider = "http://www.almasryalyoum.com/rss/RssFeeds?sectionId=3"
#news_provider = "http://www.elwatannews.com/home/rssfeeds"
#news_provider = "http://www.youm7.com/newfanrss.asp"
#news_provider = "http://www.elwatannews.com/home/rssfeeds?sectionId=+60"
#getStories(news_provider,3,2)

#getStories(news_provider, 2, 1)
#puts getImageUrlAndDetails('http://www.youm7.com//News.asp?NewsID=1409065',2)

#getStory("http://www.almasryalyoum.com/news/details/359248",1,1)
