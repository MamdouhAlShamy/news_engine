2014-01-01T21:21:53.524423+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:25:in `tagged'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/methodoverride.rb:21:in `call'
2014-01-01T21:21:53.524423+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `tagged'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/runtime.rb:17:in `call'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `call'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/request_id.rb:21:in `call'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:97:in `call'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
2014-01-01T21:21:53.525076+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/content_length.rb:14:in `call'
2014-01-01T21:21:53.525076+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/handler/webrick.rb:60:in `service'
2014-01-01T21:21:53.525076+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
2014-01-01T21:21:53.525076+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
2014-01-01T21:21:53.525076+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
2014-01-01T21:21:53.524888+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:511:in `call'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/request_forgery_protection.rb:177:in `verify_authenticity_token'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:377:in `_run__1706654143045684790__process_action__callbacks'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:80:in `run_callbacks'
2014-01-01T21:21:53.525076+00:00 app[web.1]: ActionController::InvalidAuthenticityToken (ActionController::InvalidAuthenticityToken):
2014-01-01T21:21:53.525076+00:00 app[web.1]: 
2014-01-01T21:21:53.525076+00:00 app[web.1]: 
2014-01-01T21:21:53.525076+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/request_forgery_protection.rb:163:in `handle_unverified_request'
2014-01-01T21:21:53.525076+00:00 app[web.1]: 
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/request_forgery_protection.rb:170:in `handle_unverified_request'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/rescue.rb:29:in `process_action'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/instrumentation.rb:31:in `block in process_action'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/notifications.rb:159:in `block in instrument'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/notifications/instrumenter.rb:20:in `instrument'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/notifications.rb:159:in `instrument'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/instrumentation.rb:30:in `process_action'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/params_wrapper.rb:245:in `process_action'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/railties/controller_runtime.rb:18:in `process_action'
2014-01-01T21:21:53.525436+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/abstract_controller/callbacks.rb:17:in `process_action'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/routing/route_set.rb:80:in `dispatch'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/routing/route_set.rb:48:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/journey/router.rb:71:in `block in call'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal.rb:195:in `dispatch'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/abstract_controller/base.rb:136:in `process'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal/rack_delegation.rb:13:in `dispatch'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/abstract_controller/rendering.rb:44:in `process'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_controller/metal.rb:231:in `block in action'
2014-01-01T21:21:53.525607+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/routing/route_set.rb:80:in `call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/callbacks.rb:29:in `block in call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:373:in `_run__1968646076999475894__call__callbacks'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/callbacks.rb:80:in `run_callbacks'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/callbacks.rb:27:in `call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/remote_ip.rb:76:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/journey/router.rb:59:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/journey/router.rb:59:in `each'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/cookies.rb:486:in `call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/session/abstract/id.rb:225:in `context'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/routing/route_set.rb:680:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/etag.rb:23:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/conditionalget.rb:35:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/head.rb:11:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/params_parser.rb:27:in `call'
2014-01-01T21:21:53.525909+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/flash.rb:241:in `call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/session/abstract/id.rb:220:in `call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/connection_adapters/abstract/connection_pool.rb:626:in `call'
2014-01-01T21:21:53.526066+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activerecord-4.0.1/lib/active_record/query_cache.rb:36:in `call'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/debug_exceptions.rb:17:in `call'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/show_exceptions.rb:30:in `call'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:38:in `call_app'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `block in call'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/rack/logger.rb:20:in `call'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `block in tagged'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:25:in `tagged'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/tagged_logging.rb:67:in `tagged'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/request_id.rb:21:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/actionpack-4.0.1/lib/action_dispatch/middleware/static.rb:64:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/runtime.rb:17:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/activesupport-4.0.1/lib/active_support/cache/strategy/local_cache.rb:83:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/engine.rb:511:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/lock.rb:17:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/railties-4.0.1/lib/rails/application.rb:97:in `call'
2014-01-01T21:21:53.526447+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/methodoverride.rb:21:in `call'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:138:in `service'
2014-01-01T21:21:53.526947+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/httpserver.rb:94:in `run'
2014-01-01T21:21:53.526947+00:00 app[web.1]:   vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:191:in `block in start_thread'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/handler/webrick.rb:60:in `service'
2014-01-01T21:21:53.526610+00:00 app[web.1]:   vendor/bundle/ruby/1.9.1/gems/rack-1.5.2/lib/rack/content_length.rb:14:in `call'
2014-01-01T21:21:53.526947+00:00 app[web.1]: 
2014-01-01T21:21:53.526947+00:00 app[web.1]: 
2014-01-01T22:27:13.831273+00:00 heroku[web.1]: Idling
2014-01-01T22:27:13.832101+00:00 heroku[web.1]: State changed from up to down
2014-01-01T22:27:17.919201+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2014-01-01T22:27:18.759913+00:00 app[web.1]: 	/app/vendor/ruby-1.9.3/lib/ruby/1.9.1/webrick/server.rb:98:in `select'
2014-01-01T22:27:18.759913+00:00 app[web.1]: [2014-01-01 22:27:18] ERROR SignalException: SIGTERM
2014-01-01T22:27:27.705806+00:00 heroku[web.1]: Stopping remaining processes with SIGKILL
2014-01-01T22:27:27.705567+00:00 heroku[web.1]: Error R12 (Exit timeout) -> At least one process failed to exit within 10 seconds of SIGTERM
2014-01-01T22:27:29.724260+00:00 heroku[web.1]: Process exited with status 137
2014-01-02T11:55:21.454545+00:00 heroku[web.1]: Unidling
2014-01-02T11:55:21.454545+00:00 heroku[web.1]: State changed from down to starting
2014-01-02T11:55:32.521798+00:00 heroku[web.1]: State changed from starting to up
2014-01-02T11:55:34.016697+00:00 heroku[router]: at=info method=GET path=/ host=young-journey-4873.herokuapp.com fwd="197.162.127.201" dyno=web.1 connect=1ms service=492ms status=200 bytes=415207
2014-01-02T11:55:33.548151+00:00 app[web.1]: Started GET "/" for 197.162.127.201 at 2014-01-02 11:55:33 +0000
2014-01-02T11:55:33.548151+00:00 app[web.1]: Started GET "/" for 197.162.127.201 at 2014-01-02 11:55:33 +0000
2014-01-02T11:55:33.665823+00:00 app[web.1]: Processing by WelcomeController#index as HTML
2014-01-02T11:55:33.665823+00:00 app[web.1]: Processing by WelcomeController#index as HTML
2014-01-02T11:55:56.563850+00:00 heroku[router]: at=info method=GET path=/favicon.ico host=young-journey-4873.herokuapp.com fwd="197.162.127.201" dyno=web.1 connect=6ms service=9ms status=200 bytes=0
