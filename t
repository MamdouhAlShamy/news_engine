2013-12-01T11:34:07.615772+00:00 app[web.1]: 		  ^
2013-12-01T11:34:07.616394+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:54:in `run_initializers'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/config.ru:3:in `block in <main>'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `new_from_string'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:48:in `app'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
2013-12-01T11:34:07.616394+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:215:in `initialize!'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/config.ru:in `new'
2013-12-01T11:34:07.616394+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:150:in `block in tsort_each'
2013-12-01T11:34:07.615951+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:464:in `block in eager_load!'
2013-12-01T11:34:07.615951+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:462:in `eager_load!'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `<top (required)>'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:76:in `block in <top (required)>'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:40:in `parse_file'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/config.ru:in `<main>'
2013-12-01T11:34:07.616394+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:148:in `tsort_each'
2013-12-01T11:34:07.616394+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from bin/rails:4:in `require'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from bin/rails:4:in `<main>'
2013-12-01T11:34:07.615951+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:30:in `run'
2013-12-01T11:34:07.616588+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `eval'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:75:in `start'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:277:in `build_app_and_options_from_config'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:199:in `app'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `tap'
2013-12-01T11:34:07.616914+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:314:in `wrapped_app'
2013-12-01T11:34:08.903486+00:00 heroku[web.1]: Process exited with status 1
2013-12-01T11:34:08.915036+00:00 heroku[web.1]: State changed from starting to crashed
2013-12-01T11:37:27.690386+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno= connect= service= status=503 bytes=
2013-12-01T11:37:40.653459+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno= connect= service= status=503 bytes=
2013-12-01T11:38:19.222966+00:00 heroku[web.1]: State changed from crashed to starting
2013-12-01T11:38:23.280354+00:00 heroku[web.1]: Starting process with command `bin/rails server -p 22572 -e $RAILS_ENV`
2013-12-01T11:38:26.935879+00:00 app[web.1]: => Rails 4.0.1 application starting in production on http://0.0.0.0:22572
2013-12-01T11:38:26.936812+00:00 app[web.1]: 		  ^
2013-12-01T11:38:26.936812+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:21: syntax error, unexpected ',', expecting keyword_end
2013-12-01T11:38:26.936812+00:00 app[web.1]: 		 , :details => getDetails(entry.url)
2013-12-01T11:38:26.936812+00:00 app[web.1]: 		 , :img => getImageUrl(entry.url)
2013-12-01T11:38:26.936812+00:00 app[web.1]: 		  ^
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:289:in `depend_on'
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:207:in `require_dependency'
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:465:in `block (2 levels) in eager_load!'
2013-12-01T11:38:26.936812+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:23: syntax error, unexpected ',', expecting keyword_end
2013-12-01T11:38:26.936993+00:00 app[web.1]: 		 , :url => entry.url)
2013-12-01T11:38:26.935879+00:00 app[web.1]: => Booting WEBrick
2013-12-01T11:38:26.935879+00:00 app[web.1]: => Run `rails server -h` for more startup options
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:347:in `eager_load!'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application/finisher.rb:56:in `each'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application/finisher.rb:56:in `block in <module:Finisher>'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:30:in `instance_exec'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:30:in `run'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:55:in `block in run_initializers'
2013-12-01T11:38:26.935879+00:00 app[web.1]: => Ctrl-C to shutdown server
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:150:in `block in tsort_each'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:183:in `block (2 levels) in each_strongly_connected_component'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:219:in `each_strongly_connected_component_from'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:182:in `block in each_strongly_connected_component'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:180:in `each_strongly_connected_component'
2013-12-01T11:38:26.935879+00:00 app[web.1]: Exiting
2013-12-01T11:38:26.936812+00:00 app[web.1]: /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:229:in `require': /app/app/controllers/stories_parser.rb:18: syntax error, unexpected ',', expecting ')' (SyntaxError)
2013-12-01T11:38:26.936812+00:00 app[web.1]: 		 , :provider_id => provider_id
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/railtie/configurable.rb:30:in `method_missing'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/config/environment.rb:6:in `<top (required)>'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/config.ru:3:in `require'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/ruby-1.9.3/lib/ruby/1.9.1/tsort.rb:148:in `tsort_each'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/initializable.rb:54:in `run_initializers'
2013-12-01T11:38:26.937613+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:215:in `initialize!'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/config.ru:3:in `block in <main>'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/config.ru:in `<main>'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/config.ru:in `new'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from bin/rails:4:in `require'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `tap'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `eval'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:49:in `new_from_string'
2013-12-01T11:38:26.937811+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/builder.rb:40:in `parse_file'
2013-12-01T11:38:26.936812+00:00 app[web.1]: 		  ^
2013-12-01T11:38:26.936812+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:22: syntax error, unexpected ',', expecting keyword_end
2013-12-01T11:38:26.936993+00:00 app[web.1]: 		  ^
2013-12-01T11:38:26.936993+00:00 app[web.1]: /app/app/controllers/stories_parser.rb:23: syntax error, unexpected ')', expecting keyword_end
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:229:in `block in require'
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:214:in `load_dependency'
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:229:in `require'
2013-12-01T11:38:26.936993+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/dependencies.rb:330:in `require_or_load'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:464:in `each'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:464:in `block in eager_load!'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:462:in `each'
2013-12-01T11:38:26.937174+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:462:in `eager_load!'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:277:in `build_app_and_options_from_config'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:199:in `app'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/server.rb:314:in `wrapped_app'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:48:in `app'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands/server.rb:75:in `start'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:76:in `block in <top (required)>'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/commands.rb:71:in `<top (required)>'
2013-12-01T11:38:26.938066+00:00 app[web.1]: 	from bin/rails:4:in `<main>'
2013-12-01T11:38:28.067163+00:00 heroku[web.1]: Process exited with status 1
2013-12-01T11:38:28.078108+00:00 heroku[web.1]: State changed from starting to crashed
2013-12-01T11:38:29.515632+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.0.67" dyno= connect= service= status=503 bytes=
