---
layout: post
title: "New BikeShare! for Android"
date: 2013-07-07 17:55
comments: true
categories: [android, bikeshare]
featured: http://mrm.perry.es/promo_big.png
---

I've recently developed a brand new (rebuilt from scratch) version of BikeShare! for Android. 

It's been my first approach to tablet interfaces in my *off work* apps, and I really was thrilled to do so. The app suffered an UI overhaul, and its imagery was also redone. 

First, **the icon**.

![BikeShare for Android icon](http://mrm.perry.es/icon_app_v2.png)

It looks gorgeous in my HTC One display. It has also a XXHDPI version, tested in a Nexus 10, and looks awesome too.

Then, the **tablet UI**.

![Tablet UI on Nexus 7](http://mrm.perry.es/tablet_ui.png)

All the main activities have been changed too, for both tablet and phone versions. New animations, new and better information display, and better list performance.

And the **butter** too.

The app internal communications until now were a bit of a mess IMHO. Now, with the usage of [Otto](http://square.github.io/otto/) and local intents the hassle is pretty much over. I was obsessed with the wrong patterns here, and the update process felt sluggish. 

The way the fragments were being used also required a lot of memory and made the UI felt slower than it should have been. 

The lists were using ArrayAdapter instead of BaseAdapter, and that also changed. No listings were supposed to be updating from a non-UI thread, so it was pointless.

The whole reengineering purpose was for a purpose. I wanted to be able to change stuff more often, and the code should be cleaner. And now it is, finally. 

I'm happy with the result. I hope the minor hot-fixes streak that usually follows a major release is minimal this time… 

You can download it from the usual place: [Google Play](https://play.google.com/store/apps/details?id=com.bikeshare&feature=search_result).

As if.