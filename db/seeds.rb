# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup"2010-11-16 14:12:22","2010-11-16 14:12:22").
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }]"2010-11-16 14:12:22","2010-11-16 14:12:22")
#   Mayor.create(name: 'Emanuel', city: cities.first"2010-11-16 14:12:22","2010-11-16 14:12:22")
Category.create(id:1, category_id:1, provider_id:1,name:'مصر', rss_url="http://www.almasryalyoum.com/rss/RssFeeds?sectionId=3","2010-11-16 14:12:22","2010-11-16 14:12:22")

Category.create(id:2, category_id:2, provider_id:1, name:'ثقافة', rss_url="http://www.almasryalyoum.com/rss/RssFeeds?sectionId=6","2010-11-16 14:12:22","2010-11-16 14:12:22")

Category.create(id:3, category_id:2, provider_id:3, name:'ثقافة', rss_url="http://youm7.com/newsakafarss.asp","2010-11-16 14:12:22","2010-11-16 14:12:22")

Category.create(id:4, category_id:1, provider_id:2, name:'مصر', rss_url="http://www.youm7.com/new3agelrss.asp","2010-11-16 14:12:22","2010-11-16 14:12:22")

Category.create(id:5, category_id:1, provider_id:3, name:'مصر', rss_url="http://www.elwatannews.com/home/rssfeeds","2010-11-16 14:12:22","2010-11-16 14:12:22")

Category.create(id:6, category_id:2, provider_id:3, name:'ثقافة', rss_url="http://www.elwatannews.com/home/rssfeeds?sectionId=+60","2010-11-16 14:12:22","2010-11-16 14:12:22")

Provider.create(id:1, provider_id:1, name:'المصرى اليوم', url:'http://www.almasryalyoum.com/', img:'http://i.imgur.com/tBhWApH.png?1', "2010-11-16 14:12:22","2010-11-16 14:12:22")

Provider.create(id:2, provider_id:2, name:'اليوم السابع', url:'http://www.youm7.com', img:'http://www.youm7.com/images/graphics/logo.gif', "2010-11-16 14:12:22","2010-11-16 14:12:22")

Provider.create(id:3, provider_id:3, name:'اليوم السابع', url:'http://www.elwatannews.com/', img:'http://www.elwatannews.com/content/gfx/logo.png',"2010-11-16 14:12:22","2010-11-16 14:12:22")


