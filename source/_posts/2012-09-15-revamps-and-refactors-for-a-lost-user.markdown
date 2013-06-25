---
layout: post
title: "Revamps and refactors for a lost user"
date: 2012-09-15 22:00
comments: true
categories: bikeshare
---

Last week I was rebuilding almost from scratch some parts of 
[BikeShare!](https://play.google.com/store/apps/details?id=com.bikeshare), my public sharing app for Android.

Overall the app was working okay but some user pointed out some sluggish behavior and problems with location handling, that forced me to do an extensive refactor of the location listeners. He did so with an always hated one star rating.

Moving from a class used in demand to a local service for handling the location with the app already in production wasn’t an easy task. Also I had the urge to tweak a little the user interface and improve some usability stuff, so a lot of time was invested in that area too.

In short, a week and a half work used in solving issues pointed out by an already lost user. But now it’s better. And I’m glad he said so.