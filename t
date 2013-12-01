2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/config.ru:3:in `block in <main>'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from bin/rails:4:in `require'
2013-12-01T11:12:11.296712+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:55:in `block in run_initializers'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:40:in `parse_file'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:75:in `start'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `<top (required)>'
2013-12-01T11:12:11.296552+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:465:in `block (2 levels) in eager_load!'
2013-12-01T11:12:11.297114+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each_strongly_connected_component'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:199:in `app'
2013-12-01T11:12:11.297114+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/railtie/configurable.rb:30:in `method_missing'
2013-12-01T11:12:11.297114+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:215:in `initialize!'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/config.ru:3:in `require'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
2013-12-01T11:12:11.297114+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:182:in `block in each_strongly_connected_component'
2013-12-01T11:12:11.296712+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:462:in `each'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `tap'
2013-12-01T11:12:11.297114+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from bin/rails:4:in `<main>'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/config.ru:in `new'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `eval'
2013-12-01T11:12:11.297558+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:314:in `wrapped_app'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/config.ru:in `<main>'
2013-12-01T11:12:11.297262+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
2013-12-01T11:12:12.492239+00:00 heroku[web.1]: Process exited with status 1
2013-12-01T11:12:12.504620+00:00 heroku[web.1]: State changed from starting to crashed
2013-12-01T11:17:49.641869+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path=/parse host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno= connect= service= status=503 bytes=
2013-12-01T11:19:22+00:00 heroku[slug-compiler]: Slug compilation started
2013-12-01T11:19:45.935313+00:00 heroku[api]: Deploy 305fa1f by mamdouh.al.shamy@gmail.com
2013-12-01T11:19:45.958824+00:00 heroku[api]: Release v18 created by mamdouh.al.shamy@gmail.com
2013-12-01T11:19:46+00:00 heroku[slug-compiler]: Slug compilation finished
2013-12-01T11:19:46.581685+00:00 heroku[web.1]: State changed from crashed to starting
2013-12-01T11:19:51.251547+00:00 heroku[web.1]: Starting process with command `bin/rails server -p 38275 -e $RAILS_ENV`
2013-12-01T11:19:56.557786+00:00 app[web.1]: /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:229:in `require': /app/app/controllers/stories_parser.rb:18: syntax error, unexpected ',', expecting ')' (SyntaxError)
2013-12-01T11:19:56.556704+00:00 app[web.1]: => Booting WEBrick
2013-12-01T11:19:56.556704+00:00 app[web.1]: => Rails 4.0.1 application starting in production on http://0.0.0.0:38275
2013-12-01T11:19:56.556704+00:00 app[web.1]: => Ctrl-C to shutdown server
2013-12-01T11:19:56.556704+00:00 app[web.1]: Exiting
2013-12-01T11:19:56.556704+00:00 app[web.1]: => Run `rails server -h` for more startup options
2013-12-01T11:19:56.557972+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:21: syntax error, unexpected ',', expecting keyword_end
2013-12-01T11:19:56.558137+00:00 app[web.1]: 		  ^
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		 , :details => getDetails(entry.url)
2013-12-01T11:19:56.557972+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:22: syntax error, unexpected ',', expecting keyword_end
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		  ^
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		  ^
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		 , :provider_id => provider_id
2013-12-01T11:19:56.558481+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:229:in `block in require'
2013-12-01T11:19:56.558621+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1
.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:214:in `load_dependency'
2013-12-01T11:19:56.558370+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:23: syntax error, unexpected ')', expecting keyword_end
2013-12-01T11:19:56.558830+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:330:in `require_or_load'
2013-12-01T11:19:56.558971+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:289:in `depend_on'
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		  ^
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		 , :url => entry.url)
2013-12-01T11:19:56.557972+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:23: syntax error, unexpected ',', expecting keyword_end
2013-12-01T11:19:56.557972+00:00 app[web.1]: 		 , :img => getImageUrl(entry.url)
2013-12-01T11:19:56.559700+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:347:in `eager_load!'
2013-12-01T11:19:56.558728+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:229:in `require'
2013-12-01T11:19:56.559377+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:464:in `block in eager_load!'
2013-12-01T11:19:56.559476+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:462:in `each'
2013-12-01T11:19:56.559597+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:462:in `eager_load!'
2013-12-01T11:19:56.559899+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application/finisher.rb:56:in `block in <module:Finisher>'
2013-12-01T11:19:56.559278+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:464:in `each'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:55:in `block in run_initializers'
2013-12-01T11:19:56.559078+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:207:in `require_dependency'
2013-12-01T11:19:56.559178+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:465:in `block (2 levels) in eager_load!'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:148:in `tsort_each'
2013-12-01T11:19:56.559998+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:30:in `instance_exec'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:150:in `block in tsort_each'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:183:in `block (2 levels) in each_strongly_connected_component'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:219:in `each_strongly_connected_component_from'
2013-12-01T11:19:56.559799+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application/finisher.rb:56:in `each'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each_strongly_connected_component'
2013-12-01T11:19:56.560136+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:30:in `run'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/config.ru:3:in `block in <main>'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:54:in `run_initializers'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:215:in `initialize!'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/railtie/configurable.rb:30:in `method_missing'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/config/environment.rb:6:in `<top (required)>'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/config.ru:3:in `require'
2013-12-01T11:19:56.560296+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:182:in `block in each_strongly_connected_component'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/config.ru:in `<main>'
2013-12-01T11:19:56.561001+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:48:in `app'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
2013-12-01T11:19:56.561001+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `eval'
2013-12-01T11:19:56.561001+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `new_from_string'
2013-12-01T11:19:56.561001+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:40:in `parse_file'
2013-12-01T11:19:56.561001+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:199:in `app'
2013-12-01T11:19:56.561001+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:277:in `build_app_and_options_from_config'
2013-12-01T11:19:56.561135+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:314:in `wrapped_app'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
2013-12-01T11:19:56.560472+00:00 app[web.1]: 	from /app/config.ru:in `new'
2013-12-01T11:19:56.561135+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:76:in `block in <top (required)>'
2013-12-01T11:19:56.561356+00:00 app[web.1]: 	from bin/rails:4:in `require'
2013-12-01T11:19:56.561356+00:00 app[web.1]: 	from bin/rails:4:in `<main>'
2013-12-01T11:19:56.561135+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:75:in `start'
2013-12-01T11:19:56.561135+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `tap'
2013-12-01T11:19:56.561356+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `<top (required)>'
2013-12-01T11:19:58.377940+00:00 heroku[web.1]: Process exited with status 1
2013-12-01T11:19:58.392079+00:00 heroku[web.1]: State changed from starting to crashed
2013-12-01T11:21:07.759225+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno= connect= service= status=503 bytes=
2013-12-01T11:21:13.087793+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno= connect= service= status=503 bytes=
