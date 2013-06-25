---
layout: post
title: "Fixing Mountain Lion and Homebrew issues"
date: 2012-07-27 22:00
comments: true
categories: [homebrew, mountainlion, osx]
---

Hiya.

Like many of you I’ve just installed the brand new OS X version, Mountain Lion, but to my surprise it borked my 
[Homebrew](http://mxcl.github.com/homebrew/) installation, and with it my 
ImageMagick and even my 
git.

After hours fighting I’ve found the solution to all my problems in a 
[gist](https://gist.github.com/1860902)

Here it goes:

Also remember to run this for upgrading all your soft.

brew update
brew upgrade

Then I had problems installing 
git, Homebrew didn’t let me.

~  brew update 
/usr/local/.git: Permission denied

I’ve found the solution in this other 
[gist](https://gist.github.com/768518). As it’s just code, only by executing curl to its raw file the problem was solved.

curl https://raw.github.com/gist/768518/c8ab96eab24829fa3bd8f8d4bba975f60c7d0079/fix_homebrew.rb | ruby

Then I tried to run my rails server, but RMagick was throwing some errors. I took a deep look and noticed ImageMagick was broken as well. So, time to Homebrew again.

brew install imagemagick

Got some problems also with linking because I came from some already-installed-but-not-properly-for-Mountain-Lion setup. But linking all the problematic stuff with -f flag did the trick. For example:

brew link -f libtiff

Then insisting and insisting with its installation, everything was properly installed again. Phew.

Regards to all the authors of the gists I used. You guys are awesome.