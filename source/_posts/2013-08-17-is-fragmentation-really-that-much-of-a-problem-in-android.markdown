---
layout: post
title: "Is fragmentation really that much of a problem in Android?"
date: 2013-08-17 17:38
comments: true
categories: ["android", "rant"]
featured: http://mrm.perry.es/android_versions.png
sidebar: http://mrm.perry.es/fragmentation.jpg
---

I always read the same and never-ending articles / posts / tweets about Android's fragmentation. The same [boring infographics](http://opensignal.com/reports/fragmentation.php), the same Google Play pie charts with Android version penetration, and always the same argument about how the developers are crazy about it, like if it's impossible to code because of that reason. But hey, **I'm a developer, and I couldn't care less**.

I'm not gonna say there isn't any fragmentation at all, it would be a huge lie. There is, of course. But through the years **Android tools and framework have improved A LOT**, and they embrace fragmentation. The compatibility libraries help with the interesting framework APIs. The XML resources help with layouts for different types of screens, making us to be able to code once and display the information in many different ways, or with   graphical resources, by using XML drawables.

It just takes a little more to get used to, coming from iOS programming for example, where everything is thought to be *pixel perfect* (though that's changing too, with the AutoLayout and the rumors about new types of screens in the next iPhone iterations, but still). You can't use hardcoded pixels to measure. You don't have a pretty IDE assuring that your layout is going to look perfect everywhere. You just have to take that to heart and build your interfaces avoiding things like textures and fixed sizes, in a truly responsive way. 

It's a little harder to do it when talking about SDK support, as we know iOS versions have a lot of traction very fast. But, in my case, as [Mobivery](http://www.mobivery.com) has the policy of supporting the two latest major versions by default, I can't  code at work and use the latest APIs either. So it's pretty much the same for me, I have to wait to use NSAttributedString in a native way too. Oh, but wait, it happens the same as in Android: there is a TTTAtributedString which does pretty much the same. Just like ActionBarSherlock or NineOldAndroids or many others I use for Android development. 

As a little exercise left to the reader, just try to develop any universal app in iOS and the same app in Android. You will see how the actual code is pretty much the same, with the same exceptions. And now **try to do it with a pure HTML5 app, and then kill yourself**. 

Each platform has its perks. 