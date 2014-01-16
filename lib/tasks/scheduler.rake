# lib/tasks/scheduler.rake
desc "This task is called by the Heroku scheduler add-on"
require './app/controllers/stories_parser.rb'
#require './app/models/story.rb'
task :update_feed => :environment do
	puts "Updating feed..."
	#WelcomeController.parse
	@Categories  = Category.find(:all)
	@Categories.each_with_index do |category|
			if category.id == 2
				next # problem w El masry El Youm Culture RSS
			end
			getStories(category.rss_url, category.provider_id, category.category_id)
	end
  	puts "done."
end

