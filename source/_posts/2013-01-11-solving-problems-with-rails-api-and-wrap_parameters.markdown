---
layout: post
title: "Solving problems with rails-api and wrap_parameters"
date: 2013-01-11 22:00
comments: true
categories: rails
---

In the 0.0.3 version of 
[rails-api](https://github.com/rails-api/rails-api) this issue is closed, but for previously generated code that doesn’t work anymore you have to do it manually.

The crash I’m referring to is this one, that just happened to me while updating my gems in 
[BikeShare](http://bikeshar.es) heroku app:

rake aborted!
       undefined method `wrap_parameters' for ActionController::API:Class
       /tmp/build_25t936fvt5gh3/config/initializers/wrap_parameters.rb:8:in `block in <top (required)>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/lazy_load_hooks.rb:36:in `instance_eval'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/lazy_load_hooks.rb:36:in `execute_hook'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/lazy_load_hooks.rb:26:in `block in on_load'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/lazy_load_hooks.rb:25:in `each'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/lazy_load_hooks.rb:25:in `on_load'
       /tmp/build_25t936fvt5gh3/config/initializers/wrap_parameters.rb:7:in `<top (required)>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:245:in `load'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:245:in `block in load'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:236:in `load_dependency'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:245:in `load'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/engine.rb:588:in `block (2 levels) in <class:Engine>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/engine.rb:587:in `each'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/engine.rb:587:in `block in <class:Engine>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/initializable.rb:30:in `instance_exec'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/initializable.rb:30:in `run'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/initializable.rb:55:in `block in run_initializers'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/initializable.rb:54:in `each'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/initializable.rb:54:in `run_initializers'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/application.rb:136:in `initialize!'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/railtie/configurable.rb:30:in `method_missing'
       /tmp/build_25t936fvt5gh3/config/environment.rb:5:in `<top (required)>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:251:in `require'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:251:in `block in require'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:236:in `load_dependency'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/activesupport-3.2.11/lib/active_support/dependencies.rb:251:in `require'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/application.rb:103:in `require_environment!'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/railties-3.2.11/lib/rails/application.rb:297:in `block (2 levels) in initialize_tasks'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/actionpack-3.2.11/lib/sprockets/assets.rake:93:in `block (2 levels) in <top (required)>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/actionpack-3.2.11/lib/sprockets/assets.rake:60:in `block (3 levels) in <top (required)>'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/actionpack-3.2.11/lib/sprockets/assets.rake:23:in `invoke_or_reboot_rake_task'
       /tmp/build_25t936fvt5gh3/vendor/bundle/ruby/1.9.1/gems/actionpack-3.2.11/lib/sprockets/assets.rake:29:in `block (2 levels) in <top (required)>'
       Tasks: TOP => environment
       (See full trace by running task with --trace)

If we read it carefully, it seems that it cannot find wrap_parameters method, so we have to make some changes in the file /config/initializers/wrap_parameters.rb, in the first block of code.

**We must replace the /config/initializers/wrap_parameters.rb file with this one:**

I’ve also posted this workaround in 
[StackOverflow](http://stackoverflow.com/questions/14088669/rails-api-app-no-methoderror-when-i-run-foreman-start/14276565#14276565) for future reference.