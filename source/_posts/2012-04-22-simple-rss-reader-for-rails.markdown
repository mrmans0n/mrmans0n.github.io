---
layout: post
title: "Simple RSS reader for Rails"
date: 2012-04-22 22:00
comments: true
categories: [javascript, jquery, rails, rss]
---

I wanted a little feed reader for displaying some titles and links in a web page and didn’t like the idea of using a gem that would give me a lot more than I needed. So I wrote a reader in 
**jQuery**
 that would populate any div with a given id and voilà.

As $.ajax doesn’t let you access external links, the parameter 
internalUrl comes in handy. I routed /blog_feed to a controller with a method I called 
**blog**
. In there I read all the data and display it through a view.

And that’s all. Simple idea and simple resolution. You can fork the gists and do whatever you want with them.

Cheers.