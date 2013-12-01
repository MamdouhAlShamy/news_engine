=begin
the purpose it to give the RSS link and get from it title, image, details ,url and Id and store into DB
=end
require 'feedzirra'
require 'nokogiri'
require 'open-uri'

def getStories(news_provider, provider_id, category_id) 
	z = Feedzirra::Feed.fetch_and_parse(news_provider)
	for  entry in z.entries
#		puts entry.url.split(pattern="/")[-1]
#		puts entry.url
#		puts entry.title
#		puts getImageUrl(entry.url)
#		puts getDetails(entry.url)
	
		 Story.create(:story_id => entry.url.split(pattern="/")[-1]
		 , :provider_id => provider_id
		 , :category_id => category_id
		 , :title => entry.title
		 , :details => getDetails(entry.url)
		 , :img => getImageUrl(entry.url)
		 , :url => entry.url)
		break		
	end
end

def getImageUrl(story_url)
## TODO that is made depending on El Masry el youm scheme
	image_div_id = "views-slideshow-ddblock-field_associated_media_default"
	image_div_class = "slide-inner clear-block border"
	
	story_content_html = Nokogiri::HTML(open(story_url))
	image_url = story_content_html.css('div#'+ image_div_id + ' a').css('img').attribute('src').to_s
	return image_url
end

def getDetails(story_url) ## replace story_url w Id
	if story_url.include? "almasryalyoum"
		# get div with id 'arabic-news'
		# from it get div class 'pane-content'
		## TODO that is made depending on El Masry el youm scheme
			details_div_id = "arabic-news"
			details_div_class = "pane-content"
			details_parent_div_class = "panel-pane pane-node-body"
	
			story_content_html = Nokogiri::HTML(open(story_url))
			temp = story_content_html.css('div#'+ details_div_id)
			details = temp.css('div.panel-pane.pane-node-body').text.strip
		#	puts details
			return details
	#	Egyptindependent
	elsif story_url.include? "egyptindependent"
		# get div with id 'arabic-news'
		# from it get div class 'pane-content'
		details_div_id = "EI_news"
		details_div_class = "pane-content"
		details_parent_div_class = "panel-pane pane-node-body"
	
		story_content_html = Nokogiri::HTML(open(story_url))
		temp = story_content_html.css('div#'+ details_div_id)
		details = temp.css('div.panel-pane.pane-node-body').text.strip

		return details
	end
	
end
#news_provider = "http://www.almasryalyoum.com/rss_feed_term/223241/rss.xml"
#getStories(news_provider,1,1)
