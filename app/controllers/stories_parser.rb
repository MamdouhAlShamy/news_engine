=begin
the purpose it to give the RSS link and get from it title, image, details ,url and Id and store into DB
=end
require 'feedzirra'
require 'nokogiri'
require 'open-uri'

def getStories(news_provider, provider_id, category_id) 
	z = Feedzirra::Feed.fetch_and_parse(news_provider)
	for  entry in z.entries

		if provider_id == 2 # Youm7
			id = entry.url.split(pattern="=")[-1]
		else
			id = entry.url.split(pattern="/")[-1]
		end
		
		image_and_details = getImageUrlAndDetails(entry.url, provider_id)	
	
### To test the parser from Terminal		
#		puts id
#		puts entry.url
#		puts entry.title
#		puts image_and_details[0]  #image url
#		puts image_and_details[1]  #details
#		puts entry.published
	
		## Save into DB
		Story.create(:story_id => id, :provider_id => provider_id, :category_id => category_id, :title => entry.title, :details => image_and_details[1], :img => image_and_details[0], :url => entry.url)

#		break		
	end
end

def getImageUrlAndDetails(story_url, provider_id)
	story_content_html = Nokogiri::HTML(open(story_url))
	## El Masry El Youm
	if provider_id == 1
		# Image Parsing
		begin
			image_div_id = "articleimg"
			image_url = story_content_html.css('div.'+ image_div_id).css('img').attribute('src').to_s
		rescue  
   			image_url = "" 
		end
	
		# Details Parsing
		# get div with id 'arabic-news'
		# from it get div class 'pane-content'
		details_div_id = "NewsStory"
		details = story_content_html.css('div#'+ details_div_id).text.strip
	#	puts details
	
		return [image_url, details]
	
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
		return [image_url, details]
	
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
		return [image_url, details]
	end
end

#news_provider = "http://www.almasryalyoum.com/rss/RssFeeds?sectionId=3"
#news_provider = "http://www.elwatannews.com/home/rssfeeds"
#news_provider = "http://www.youm7.com/newfanrss.asp"
#getStories(news_provider,3,2)

#getStories(news_provider, 1, 1)
