---
layout: post
title: "Displaying git information in Rails"
date: 2012-04-25 22:00
comments: true
categories: [rails, git]
---

Here is a code snippet that placed within an initializer (for example, in 
**git_info.rb**
 at /config/initializers path) can print in your app useful info about the current version of your web app and when it was pushed.

You just have to print them wherever you want. 
**GIT_BRANCH**
 is the branch deployed, 
**GIT_COMMIT**
 is the long 
SHA hash of the last commit while 
**GIT_REVISION**
 is its short 
SHA, and 
**GIT_LASTUPDATE**
 is the formatted time when the last commit was pushed.