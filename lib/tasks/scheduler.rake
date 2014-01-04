task :update_feed => :environment do
	puts "Updating feed..."
	@Categories  = Category.find(:all)
	@Categories.each_with_index do |category|
			getStories(category.rss_url, category.provider_id, category.category_id)
	break
	end
  puts "done."
end
