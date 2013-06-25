---
layout: post
title: "Annoying rake problem: You have already activated rake 10.0.2, but your Gemfile requires rake 0.9.2.2"
date: 2012-12-02 22:00
comments: true
categories: rails
---

If you have this problem, like I had few moments ago deploying this web last version, the solution is simple.

rake aborted!
You have already activated rake 10.0.2, but your Gemfile requires rake 0.9.2.2. Using bundle exec may solve this.
/home/domain/.rvm/gems/ruby-1.9.3-p125/gems/bundler-1.2.3/lib/bundler/runtime.rb:31:in `block in setup'
/home/domain/.rvm/gems/ruby-1.9.3-p125/gems/bundler-1.2.3/lib/bundler/runtime.rb:17:in `setup'
/home/domain/.rvm/gems/ruby-1.9.3-p125/gems/bundler-1.2.3/lib/bundler.rb:116:in `setup'
/home/domain/.rvm/gems/ruby-1.9.3-p125/gems/bundler-1.2.3/lib/bundler/setup.rb:7:in `<top (required)>'
/home/domain/rails_deploys/nlopez.in/config/boot.rb:6:in `<top (required)>'
/home/domain/rails_deploys/nlopez.in/config/application.rb:1:in `<top (required)>'
/home/domain/rails_deploys/nlopez.in/Rakefile:5:in `<top (required)>'
(See full trace by running task with --trace)

The solution is pretty simple:

$ gem uninstall rake

And deploy again. Works like a charm. Don’t worry, 
**your rake won’t go anywhere**
. The thing is, you had installed it 
**twice**
.