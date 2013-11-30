2013-11-29T22:41:17.000148+00:00 app[web.1]: 
2013-11-29T22:41:17.000839+00:00 app[web.1]: 
2013-11-29T22:41:16.999975+00:00 app[web.1]:   app/controllers/welcome_controller.rb:16:in `parse'
2013-11-29T22:41:16.999975+00:00 app[web.1]: 
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `open'
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/stories_parser.rb:7:in `getStories'
2013-11-29T22:41:17.000839+00:00 app[web.1]: Errno::ENOENT (No such file or directory - http://www.egyptindependent.com/node/2357141):
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/stories_parser.rb:7:in `each'
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `initialize'
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `getImageUrl'
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/stories_parser.rb:10:in `block in getStories'
2013-11-29T22:41:17.000839+00:00 app[web.1]:   app/controllers/welcome_controller.rb:16:in `parse'
2013-11-29T22:41:17.000839+00:00 app[web.1]: 
2013-11-29T22:41:17.001022+00:00 app[web.1]: 
2013-11-29T23:04:58.854465+00:00 app[web.1]: Started GET "/category" for 41.239.143.56 at 2013-11-29 23:04:58 +0000
2013-11-29T23:04:58.854465+00:00 app[web.1]: Started GET "/category" for 41.239.143.56 at 2013-11-29 23:04:58 +0000
2013-11-29T23:04:58.856267+00:00 app[web.1]: Processing by WelcomeController#category as */*
2013-11-29T23:04:58.856267+00:00 app[web.1]: Processing by WelcomeController#category as */*
2013-11-29T23:04:58.904513+00:00 app[web.1]:   Rendered welcome/categories.json.erb (1.1ms)
2013-11-29T23:04:58.904513+00:00 app[web.1]:   Rendered welcome/categories.json.erb (1.1ms)
2013-11-29T23:04:58.904775+00:00 app[web.1]: Completed 200 OK in 48ms (Views: 15.7ms | ActiveRecord: 14.9ms)
2013-11-29T23:04:58.904775+00:00 app[web.1]: Completed 200 OK in 48ms (Views: 15.7ms | ActiveRecord: 14.9ms)
2013-11-29T23:04:58.916992+00:00 heroku[router]: at=info method=GET path=/category host=young-journey-4873.herokuapp.com fwd="41.239.143.56" dyno=web.1 connect=1ms service=71ms status=200 bytes=183
2013-11-30T00:06:59.362539+00:00 heroku[web.1]: Idling
2013-11-30T00:06:59.363045+00:00 heroku[web.1]: State changed from up to down
2013-11-30T00:07:02.284493+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2013-11-30T00:07:03.016260+00:00 app[web.1]: 	/app/vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:98:in `select'
2013-11-30T00:07:03.016260+00:00 app[web.1]: [2013-11-30 00:07:03] ERROR SignalException: SIGTERM
2013-11-30T00:07:12.750407+00:00 heroku[web.1]: Error R12 (Exit timeout) -> At least one process failed to exit within 10 seconds of SIGTERM
2013-11-30T00:07:12.750525+00:00 heroku[web.1]: Stopping remaining processes with SIGKILL
2013-11-30T00:07:14.835687+00:00 heroku[web.1]: Process exited with status 137
2013-11-30T19:53:08.881086+00:00 heroku[web.1]: Unidling
2013-11-30T19:53:08.881459+00:00 heroku[web.1]: State changed from down to starting
2013-11-30T19:53:12.524769+00:00 heroku[web.1]: Starting process with command `bin/rails server -p 25436 -e $RAILS_ENV`
2013-11-30T19:53:16.620833+00:00 app[web.1]: [2013-11-30 19:53:16] INFO  WEBrick 1.3.1
2013-11-30T19:53:16.620833+00:00 app[web.1]: [2013-11-30 19:53:16] INFO  ruby 1.9.3 (2013-11-22) [x86_64-linux]
2013-11-30T19:53:16.621046+00:00 app[web.1]: [2013-11-30 19:53:16] INFO  WEBrick::HTTPServer#start: pid=2 port=25436
2013-11-30T19:53:17.014090+00:00 heroku[web.1]: State changed from starting to up
2013-11-30T19:53:17.972230+00:00 app[web.1]: => Run `rails server -h` for more startup options
2013-11-30T19:53:17.972230+00:00 app[web.1]: Started GET "/" for 197.162.0.67 at 2013-11-30 19:53:17 +0000
2013-11-30T19:53:17.972230+00:00 app[web.1]: => Booting WEBrick
2013-11-30T19:53:17.972230+00:00 app[web.1]: => Rails 4.0.1 application starting in production on http://0.0.0.0:25436
2013-11-30T19:53:17.972230+00:00 app[web.1]: => Ctrl-C to shutdown server
2013-11-30T19:53:17.972230+00:00 app[web.1]: Started GET "/" for 197.162.0.67 at 2013-11-30 19:53:17 +0000
2013-11-30T19:53:18.082547+00:00 app[web.1]: Processing by WelcomeController#index as HTML
2013-11-30T19:53:18.082547+00:00 app[web.1]: Processing by WelcomeController#index as HTML
2013-11-30T19:53:18.174602+00:00 app[web.1]:   Rendered welcome/headlines.json.erb (1.2ms)
2013-11-30T19:53:18.174602+00:00 app[web.1]:   Rendered welcome/headlines.json.erb (1.2ms)
2013-11-30T19:53:18.175267+00:00 app[web.1]: Completed 200 OK in 92ms (Views: 3.9ms | ActiveRecord: 47.3ms)
2013-11-30T19:53:18.175267+00:00 app[web.1]: Completed 200 OK in 92ms (Views: 3.9ms | ActiveRecord: 47.3ms)
2013-11-30T19:53:18.178330+00:00 heroku[router]: at=info method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno=web.1 connect=2ms service=213ms status=200 bytes=692
2013-11-30T20:59:02.793868+00:00 heroku[web.1]: Idling
2013-11-30T20:59:02.796264+00:00 heroku[web.1]: State changed from up to down
2013-11-30T20:59:05.122822+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2013-11-30T20:59:05.718223+00:00 app[web.1]: [2013-11-30 20:59:05] ERROR SignalException: SIGTERM
2013-11-30T20:59:05.718223+00:00 app[web.1]: 	/app/vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:98:in `select'
2013-11-30T20:59:14.791729+00:00 heroku[web.1]: Error R12 (Exit timeout) -> At least one process failed to exit within 10 seconds of SIGTERM
2013-11-30T20:59:14.791862+00:00 heroku[web.1]: Stopping remaining processes with SIGKILL
2013-11-30T20:59:16.356978+00:00 heroku[web.1]: Process exited with status 137
2013-11-30T21:42:58.670124+00:00 heroku[web.1]: Unidling
2013-11-30T21:42:58.670124+00:00 heroku[web.1]: State changed from down to starting
2013-11-30T21:43:02.017781+00:00 heroku[web.1]: Starting process with command `bin/rails server -p 34240 -e $RAILS_ENV`
2013-11-30T21:43:06.200360+00:00 app[web.1]: [2013-11-30 21:43:06] INFO  ruby 1.9.3 (2013-11-22) [x86_64-linux]
2013-11-30T21:43:06.200360+00:00 app[web.1]: [2013-11-30 21:43:06] INFO  WEBrick 1.3.1
2013-11-30T21:43:06.200472+00:00 app[web.1]: [2013-11-30 21:43:06] INFO  WEBrick::HTTPServer#start: pid=2 port=34240
2013-11-30T21:43:06.483368+00:00 heroku[web.1]: State changed from starting to up
2013-11-30T21:43:07.920331+00:00 app[web.1]: => Booting WEBrick
2013-11-30T21:43:07.920331+00:00 app[web.1]: => Run `rails server -h` for more startup options
2013-11-30T21:43:07.920331+00:00 app[web.1]: Started GET "/parse" for 197.162.0.67 at 2013-11-30 21:43:07 +0000
2013-11-30T21:43:07.920331+00:00 app[web.1]: Started GET "/parse" for 197.162.0.67 at 2013-11-30 21:43:07 +0000
2013-11-30T21:43:07.920331+00:00 app[web.1]: => Rails 4.0.1 application starting in production on http://0.0.0.0:34240
2013-11-30T21:43:07.920331+00:00 app[web.1]: => Ctrl-C to shutdown server
2013-11-30T21:43:08.036323+00:00 app[web.1]: Processing by WelcomeController#parse as HTML
2013-11-30T21:43:08.036323+00:00 app[web.1]: Processing by WelcomeController#parse as HTML
2013-11-30T21:43:08.479331+00:00 app[web.1]: Completed 500 Internal Server Error in 443ms
2013-11-30T21:43:08.480770+00:00 app[web.1]: 
2013-11-30T21:43:08.478781+00:00 app[web.1]: Syrian forces 'retake Deir Attiyeh'
2013-11-30T21:43:08.480770+00:00 app[web.1]: Errno::ENOENT (No such file or directory - http://www.egyptindependent.com/node/2357141):
2013-11-30T21:43:08.478781+00:00 app[web.1]: http://www.egyptindependent.com/node/2357141
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `initialize'
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `open'
2013-11-30T21:43:08.479331+00:00 app[web.1]: Completed 500 Internal Server Error in 443ms
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/stories_parser.rb:10:in `block in getStories'
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/stories_parser.rb:7:in `getStories'
2013-11-30T21:43:08.480957+00:00 app[web.1]: 
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `getImageUrl'
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/stories_parser.rb:7:in `each'
2013-11-30T21:43:08.480770+00:00 app[web.1]: 
2013-11-30T21:43:08.480957+00:00 app[web.1]: 
2013-11-30T21:43:08.480957+00:00 app[web.1]: Errno::ENOENT (No such file or directory - http://www.egyptindependent.com/node/2357141):
2013-11-30T21:43:08.480770+00:00 app[web.1]:   app/controllers/welcome_controller.rb:16:in `parse'
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `getImageUrl'
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/stories_parser.rb:7:in `getStories'
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/welcome_controller.rb:16:in `parse'
2013-11-30T21:43:08.481114+00:00 app[web.1]: 
2013-11-30T21:43:08.481114+00:00 app[web.1]: 
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `initialize'
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/stories_parser.rb:22:in `open'
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/stories_parser.rb:10:in `block in getStories'
2013-11-30T21:43:08.480957+00:00 app[web.1]:   app/controllers/stories_parser.rb:7:in `each'
2013-11-30T21:43:09.038506+00:00 heroku[router]: at=info method=GET path=/favicon.ico host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno=web.1 connect=2ms service=7ms status=200 bytes=0
