2014-01-03T14:31:34.748911+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/runtime.rb:17:in `call'
2014-01-03T14:31:34.748911+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/cache/strategy/local_cache.rb:83:in `call'
2014-01-03T14:31:34.748911+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/static.rb:64:in `call'
2014-01-03T14:31:34.748911+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
2014-01-03T14:31:34.748911+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `call'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:511:in `call'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/content_length.rb:14:in `call'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/handler/webrick.rb:60:in `service'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'
2014-01-03T14:31:34.749237+00:00 app[web.1]: 
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:97:in `call'
2014-01-03T14:31:34.749237+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
2014-01-03T14:31:34.749237+00:00 app[web.1]: 
2014-01-03T14:30:57.903902+00:00 heroku[router]: at=info method=GET path=/favicon.ico host=young-journey-4873.herokuapp.com fwd="197.162.11.127" dyno=web.1 connect=1ms service=5ms status=200 bytes=0
2014-01-03T14:31:18.767558+00:00 heroku[router]: at=info method=POST path=/register host=young-journey-4873.herokuapp.com fwd="197.162.11.127" dyno=web.1 connect=1ms service=7ms status=400 bytes=0
2014-01-03T14:31:34.748632+00:00 heroku[router]: at=info method=POST path=/register host=young-journey-4873.herokuapp.com fwd="197.162.11.127" dyno=web.1 connect=2ms service=10ms status=400 bytes=0
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:23:in `call'
2014-01-03T14:46:42.642017+00:00 app[web.1]: Started POST "/register" for 197.162.11.127 at 2014-01-03 14:46:42 +0000
2014-01-03T14:46:42.642017+00:00 app[web.1]: Started POST "/register" for 197.162.11.127 at 2014-01-03 14:46:42 +0000
2014-01-03T14:46:42.643578+00:00 app[web.1]: 
2014-01-03T14:46:42.643578+00:00 app[web.1]: ActionDispatch::ParamsParser::ParseError (795: unexpected token at 'fa'):
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/flash.rb:241:in `call'
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/session/abstract/id.rb:220:in `call'
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/cookies.rb:486:in `call'
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:53:in `rescue in parse_formatted_parameters'
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:32:in `parse_formatted_parameters'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:373:in `_run__1947074914495547069__call__callbacks'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:80:in `run_callbacks'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:38:in `call_app'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/callbacks.rb:27:in `call'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/remote_ip.rb:76:in `call'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/debug_exceptions.rb:17:in `call'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/methodoverride.rb:21:in `call'
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/session/abstract/id.rb:225:in `context'
2014-01-03T14:46:42.643578+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/query_cache.rb:36:in `call'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/connection_adapters/abstract/connection_pool.rb:626:in `call'
2014-01-03T14:46:42.643752+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `block in call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `block in tagged'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:25:in `tagged'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `tagged'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/request_id.rb:21:in `call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/runtime.rb:17:in `call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/cache/strategy/local_cache.rb:83:in `call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/static.rb:64:in `call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `call'
2014-01-03T14:46:42.643918+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:511:in `call'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:97:in `call'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/content_length.rb:14:in `call'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/handler/webrick.rb:60:in `service'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/session/abstract/id.rb:225:in `context'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:32:in `parse_formatted_parameters'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/flash.rb:241:in `call'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/session/abstract/id.rb:220:in `call'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/cookies.rb:486:in `call'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/query_cache.rb:36:in `call'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
2014-01-03T14:46:42.644374+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'
2014-01-03T14:46:42.644374+00:00 app[web.1]: 
2014-01-03T14:46:42.644374+00:00 app[web.1]: 
2014-01-03T14:46:42.644535+00:00 app[web.1]: 
2014-01-03T14:46:42.644535+00:00 app[web.1]: ActionDispatch::ParamsParser::ParseError (795: unexpected token at 'fa'):
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:53:in `rescue in parse_formatted_parameters'
2014-01-03T14:46:42.644535+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:23:in `call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:373:in `_run__1947074914495547069__call__callbacks'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/connection_adapters/abstract/connection_pool.rb:626:in `call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:80:in `run_callbacks'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/callbacks.rb:27:in `call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/remote_ip.rb:76:in `call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/debug_exceptions.rb:17:in `call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/request_id.rb:21:in `call'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:38:in `call_app'
2014-01-03T14:46:42.644855+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `block in call'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/methodoverride.rb:21:in `call'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/runtime.rb:17:in `call'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/cache/strategy/local_cache.rb:83:in `call'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/static.rb:64:in `call'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:511:in `call'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:97:in `call'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/content_length.rb:14:in `call'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/handler/webrick.rb:60:in `service'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `block in tagged'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:25:in `tagged'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `tagged'
2014-01-03T14:46:42.645008+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `call'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
2014-01-03T14:46:42.645313+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'
2014-01-03T14:46:42.645313+00:00 app[web.1]: 
2014-01-03T14:46:42.645313+00:00 app[web.1]: 
2014-01-03T14:46:42.646685+00:00 heroku[router]: at=info method=POST path=/register host=young-journey-4873.herokuapp.com fwd="197.162.11.127" dyno=web.1 connect=2ms service=7ms status=400 bytes=0
