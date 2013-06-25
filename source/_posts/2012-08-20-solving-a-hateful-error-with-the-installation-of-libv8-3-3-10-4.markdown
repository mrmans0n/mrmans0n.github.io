---
layout: post
title: "Solving a hateful error with the installation of libv8 (3.3.10.4)"
date: 2012-08-20 22:00
comments: true
categories: [rails, libv8]
---

I’ve been having problems with my latest Rails installation in my 
**recently fresh installed**
 Mountain Lion while doing a 
**bundle install**
.

$ bundle install
Fetching gem metadata from http://rubygems.org/.......
Using rake (0.9.2.2) 
Using RedCloth (4.2.9) 
Using multi_json (1.2.0) 
Using activesupport (3.1.3) 
Using builder (3.0.0) 
Using i18n (0.6.0) 
Using activemodel (3.1.3) 
Using erubis (2.7.0) 
Using rack (1.3.6) 
Using rack-cache (1.2) 
Using rack-mount (0.8.3) 
Using rack-test (0.6.1) 
Using hike (1.2.1) 
Using tilt (1.3.3) 
Using sprockets (2.0.3) 
Using actionpack (3.1.3) 
Using mime-types (1.18) 
Using polyglot (0.3.3) 
Using treetop (1.4.10) 
Using mail (2.3.3) 
Using actionmailer (3.1.3) 
Using arel (2.2.3) 
Using tzinfo (0.3.32) 
Using activerecord (3.1.3) 
Using activeresource (3.1.3) 
Using ansi (1.4.2) 
Using bcrypt-ruby (3.0.1) 
Using will_paginate (3.0.3) 
Using bootstrap-will_paginate (0.0.7) 
Using bundler (1.1.5) 
Using coffee-script-source (1.2.0) 
Using execjs (1.3.0) 
Using coffee-script (2.2.0) 
Using rack-ssl (1.3.2) 
Using json (1.6.6) 
Using rdoc (3.12) 
Using thor (0.14.6) 
Using railties (3.1.3) 
Using coffee-rails (3.1.1) 
Using commonjs (0.2.5) 
Using gchartrb (0.8) 
Using jquery-rails (1.0.19) 
Installing libv8 (3.3.10.4) with native extensions 
Gem::Installer::ExtensionBuildError: ERROR: Failed to build gem native extension.


/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby extconf.rb 
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of
necessary libraries and/or headers.  Check the mkmf.log file for more
details.  You may need configuration options.


Provided configuration options:
	--with-opt-dir
	--without-opt-dir
	--with-opt-include
	--without-opt-include=${opt-dir}/include
	--with-opt-lib
	--without-opt-lib=${opt-dir}/lib
	--with-make-prog
	--without-make-prog
	--srcdir=.
	--curdir
	--ruby=/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby
extconf.rb:13: uninitialized constant Gem (NameError)
Checking for Python...


Gem files will remain installed in /Users/mrm/.bundler/tmp/48692/gems/libv8-3.3.10.4 for inspection.
Results logged to /Users/mrm/.bundler/tmp/48692/gems/libv8-3.3.10.4/ext/libv8/gem_make.out
An error occured while installing libv8 (3.3.10.4), and Bundler cannot continue.
Make sure that `gem install libv8 -v '3.3.10.4'` succeeds before bundling.

After some headbanging against the wall, I’ve found that 
[it’s a common error](http://stackoverflow.com/questions/8126465/bundle-install-update-libv8-therubyracer-installation-fails-with-native-ex/8127559#8127559) and I tried to solve it with some of the solutions there, like uninstalling therubyracer and libv8 gems. Didn’t worked.

So I tried upgrading bundler.

$ sudo gem install bundler --pre
Successfully installed bundler-1.2.0.rc.2
1 gem installed
Installing ri documentation for bundler-1.2.0.rc.2...
Installing RDoc documentation for bundler-1.2.0.rc.2...

But didn’t do the trick. Then 
**I checked my ruby and rails versions**
, and while rails was at its newest, 
**my ruby installation was the one provided by Apple**
.

$ ruby -v
ruby 1.8.7 (2012-02-08 patchlevel 358) [universal-darwin12.0]

Then I realized I hadn’t installed rvm in my new installation of Mountain Lion, so 
[I did it as expected](https://rvm.io/rvm/install/) : install it and use the newest ruby version.

Then with this one…

$ ruby -v
ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin12.0.0]

…I tried again to 
**bundle install**
 and to my surprise, it was fixed. I lost precious work hours because of this, so I hope it helps you too.

$ bundle install
Fetching gem metadata from http://rubygems.org/.......
Fetching git://github.com/seyhunak/twitter-bootstrap-rails.git
remote: Counting objects: 2407, done.
remote: Compressing objects: 100% (1221/1221), done.
remote: Total 2407 (delta 1035), reused 2256 (delta 916)
Receiving objects: 100% (2407/2407), 1.14 MiB | 616 KiB/s, done.
Resolving deltas: 100% (1035/1035), done.
Using rake (0.9.2.2) 
Installing RedCloth (4.2.9) with native extensions 
Installing multi_json (1.2.0) 
Installing activesupport (3.1.3) 
Installing builder (3.0.0) 
Installing i18n (0.6.0) 
Installing activemodel (3.1.3) 
Installing erubis (2.7.0) 
Installing rack (1.3.6) 
Installing rack-cache (1.2) 
Installing rack-mount (0.8.3) 
Installing rack-test (0.6.1) 
Installing hike (1.2.1) 
Installing tilt (1.3.3) 
Installing sprockets (2.0.3) 
Installing actionpack (3.1.3) 
Installing mime-types (1.18) 
Installing polyglot (0.3.3) 
Installing treetop (1.4.10) 
Installing mail (2.3.3) 
Installing actionmailer (3.1.3) 
Installing arel (2.2.3) 
Installing tzinfo (0.3.32) 
Installing activerecord (3.1.3) 
Installing activeresource (3.1.3) 
Installing ansi (1.4.2) 
Installing bcrypt-ruby (3.0.1) with native extensions 
Installing will_paginate (3.0.3) 
Installing bootstrap-will_paginate (0.0.7) 
Installing coffee-script-source (1.2.0) 
Installing execjs (1.3.0) 
Installing coffee-script (2.2.0) 
Installing rack-ssl (1.3.2) 
Installing json (1.6.6) with native extensions 
Installing rdoc (3.12) 
Installing thor (0.14.6) 
Installing railties (3.1.3) 
Installing coffee-rails (3.1.1) 
Installing commonjs (0.2.5) 
Installing gchartrb (0.8) 
Installing jquery-rails (1.0.19) 
Installing libv8 (3.3.10.4) with native extensions 
Installing therubyracer (0.10.0) with native extensions 
Installing less (2.1.0) 
Installing less-rails (2.2.0) 
Installing polyamorous (0.5.0) 
Installing meta_search (1.1.3) 
Installing mysql2 (0.3.11) with native extensions 
Using bundler (1.1.5) 
Installing rails (3.1.3) 
Installing sass (3.1.15) 
Installing sass-rails (3.1.6) 
Installing sqlite3 (1.3.5) with native extensions 
Installing turn (0.8.2) 
Using twitter-bootstrap-rails (2.0.4) from git://github.com/seyhunak/twitter-bootstrap-rails.git (at master) 
Installing uglifier (1.2.4) 
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.
Post-install message from rdoc:
Depending on your version of ruby, you may need to install ruby rdoc/ri data:


<= 1.8.6 : unsupported
 = 1.8.7 : gem install rdoc-data; rdoc-data --install
 = 1.9.1 : gem install rdoc-data; rdoc-data --install
>= 1.9.2 : nothing to do! Yay!


Post-install message from meta_search:


*** Thanks for installing MetaSearch! ***
Be sure to check out http://metautonomo.us/projects/metasearch/ for a
walkthrough of MetaSearch's features, and click the donate button if
you're feeling especially appreciative. It'd help me justify this
"open source" stuff to my lovely wife. :)

I broke a sweat here. Specially when the 
**installing libv8**
 part took like 2 minutes and I didn’t knew if it was going to work.