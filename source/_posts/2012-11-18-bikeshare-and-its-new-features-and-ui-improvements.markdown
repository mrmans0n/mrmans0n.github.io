---
layout: post
title: "BikeShare! and its new features and UI improvements"
date: 2012-11-18 22:00
comments: true
categories: [android, bikeshare, ui/ux, rails]
---

*Link*: [https://play.google.com/store/apps/details?id=com.bikeshare](https://play.google.com/store/apps/details?id=com.bikeshare)

Been working hard last week in my spare time, as 
**I haven’t been able of disconnecting my brain after a month and a half non-stop working**
, in my beloved BikeShare! app.

And I’ve accomplished a lot, in my kaizen and never-stop-learning style. I wanted to check out 
**Heroku**
 for a rails app, and I wanted to use 
**rails-api gem**
 for building some functionality without the web overhead in Rails, so I thought of building some services on top of BikeShare! such as 
**comments for stations**
, 
**problem reporting**
 and 
**suggestions**
.

Turns out I liked the experience very much so I’m already thinking of more 
magic I can do with it.

That’s for server side. Client side I wanted to try 
[Spring for Android](http://www.springsource.org/spring-android) for consuming my brand new 
REST service. So after some headaches with the 
[Jackson](http://jackson.codehaus.org/) configuration needed for my DTOs I got it working. And it was awesome. With very little code I was able to consume all the 
REST methods I wanted in about 10 minutes of code.

[![](http://mrm.perry.es/uploads/admin/image/image/19/thumb_2012-11-18_17.38.28.png)](http://mrm.perry.es/uploads/admin/image/image/19/2012-11-18_17.38.28.png) 
[![](http://mrm.perry.es/uploads/admin/image/image/20/thumb_2012-11-18_17.36.22.png)](http://mrm.perry.es/uploads/admin/image/image/20/2012-11-18_17.36.22.png)

The UI for comments is pretty simple, though I will be adding more sugar to it if it turns out to be used by people.

I was gonna stop there for this major but I got rid of my lazyness and wanted to experiment a little more, now more UI based stuff. I’ve been wanting to use Android 3.0+ animations for quite a long time, and had starred 
[NineOldAndroids](http://nineoldandroids.com/) in my GitHub for some time too, so it was time to try it for good.

And what a pleasant surprise it was. I’ve been always whining about the animations in Android and how ugly the code for them had to be. But now that’s over. I’ve only used a few animation tricks in the app but it was a delight: simple and clean code, and pretty good performance too. But hey, let them come naturally.

Then I realized 
**I’ve come to despise the simple look of the lists of the app**
. First I tried to make a cooler favorites section. I like the Foursquare for Android look since the last major UI overhaul, so I tried to make something that resembled the “explore” tab from that app but with the look and feel of the app.

But it’d be weird if only the favorite section had this style. What about the station list? It’s the most used part of the app, and it needed some love too.

For starters, it was shameful it didn’t have any search capabilities. I always ended giving up when trying to add new stations to favorites, because I wasn’t able to find the stations far from home (or the current location whatsoever). That’s the first thing I did. Taking advantage of the recent support in 
[ActionBarSherlock](http://actionbarsherlock.com/) of the SearchView it was pretty straightforward to implement.

Then some new design was needed. So what about some “lite” version of the one already in favorites? Said and done.

It’s as fast as before, and has some more relevant information added to it, such as the map background and the real name of the station (comes with the web service). In fact the searching is performed in both the name and the address of the station, so it’s easier to get the one you are looking for.

[![](http://mrm.perry.es/uploads/admin/image/image/17/thumb_2012-11-18_17.46.49.png)](http://mrm.perry.es/uploads/admin/image/image/17/2012-11-18_17.46.49.png) 
[![](http://mrm.perry.es/uploads/admin/image/image/18/thumb_2012-11-18_17.47.09.png)](http://mrm.perry.es/uploads/admin/image/image/18/2012-11-18_17.47.09.png)

I really hope the users will like it, as I’m really proud of the result. Of course, in a week or so I’ll be pissed with a feature and I’ll want to change it. But hey, I also want the users to send suggestions and report problems with the respective new sections. That’s their raison d’être after all.