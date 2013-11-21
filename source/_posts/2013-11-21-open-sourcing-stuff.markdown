---
layout: post
title: "Open Sourcing stuff"
date: 2013-11-21 20:57
comments: true
categories: ["open source", "ruby", "android", "library", "gem", "localio", "smart location", "clusterer"]
featured: http://mrm.perry.es/open-source.jpg
---
I've submitted some new versions of [Localio](https://github.com/mrmans0n/localio) addressing bugs and adding some features (like **XLSX support**), but that's all in the ruby side.

But being true to my roots, I've been working on some libraries lately, all of them for **Android**. You might want to check them out...

* [SmartLocation](https://github.com/mobivery/smart-location-lib): A library for making easier the integration with the new **Location** powered by *Google Play Services*, with a twist - adding the current activity performed by the user (on foot, on vehicle, standing still, etc) to the mix, so we can tweak the detection precision depending on that.

* [Clusterer](https://github.com/mrmans0n/clusterer): A library version of some classes I have already open sourced, that perform **clustering** on Maps v2 for Android. I'm working on an update in a branch that switches from a linear clustering algorithm to another version using quad trees, that is being developed right now, as Thoughtbot guys showed in their iOS example. 

Anyway I'll keep on working on these, as it helps me with dealing with [the ordeal that is working for clients](http://nlopez.io/blog/2013/09/01/things-i-dont-like-about-working-for-clients/).