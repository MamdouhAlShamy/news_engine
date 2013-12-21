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
			story_id = entry.url.split(pattern="=")[-1]
		else
			story_id = entry.url.split(pattern="/")[-1]
		end
		
		image_details_and_related = getImageUrlAndDetails(entry.url, provider_id, category_id)
		time = 	entry.published.to_s.split(" UTC")[0]
	
### To test the parser from Terminal		
		puts story_id
		puts entry.url
		puts entry.title
		puts image_details_and_related[0]	# image url
		puts image_details_and_related[1]	# details
		puts image_details_and_related[2]	# related 1
		puts image_details_and_related[3]	# related 2
		puts time
	
		## Save into DB
		#Story.create(:story_id => story_id, :provider_id => provider_id, :category_id => category_id, :title => entry.title, :details => image_details_and_related[1], :img => image_details_and_related[0], :url => entry.url,:created_at => time, :updated_at => time, :relate1 => image_details_and_related[2], :relate2 => image_details_and_related[3])
	
	end
end



## made to get the info from stroy from its internal page(detailed)
def getStory(url, provider_id, category_id)
 	# Story Id
 	if provider_id == 2 # Youm7
		story_id = url.split(pattern="=")[-1]
	else
		story_id = url.split(pattern="/")[-1]
	end 
	
	# Image, Details and related
	image_details_and_related = getImageUrlAndDetails(url, provider_id, category_id)
	
	#return [story_id, image_details_and_related[4], image_details_and_related[0], image_details_and_related[1], image_details_and_related[2], image_details_and_related[3]]
	return image_details_and_related[4]
end



def getImageUrlAndDetails(story_url, provider_id, category_id)
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
		begin
			related_div_class = "ret_post"
			related = story_content_html.css('div.'+ related_div_class).css('ul.side-nav a')
			related1_id = related[0]['href'].split(pattern="/")[-1]
			getStory("http://www.almasryalyoum.com/news/details/"+related1_id,1, category_id)
			related2_id = related[1]['href'].split(pattern="/")[-1]
		rescue  
			related1_id = ""
			related2_id = ""
		end
		
		## Title Parse
		title_class = "tit_2"
		title = story_content_html.css('title')
		
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

#getStories(news_provider, 2, 1)
#puts getImageUrlAndDetails('http://www.youm7.com//News.asp?NewsID=1409065',2)

puts getStory("http://www.almasryalyoum.com/news/details/359248",1,1)
