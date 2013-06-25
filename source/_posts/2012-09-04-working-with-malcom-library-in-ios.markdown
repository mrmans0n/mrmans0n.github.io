---
layout: post
title: "Working with Malcom library in iOS"
date: 2012-09-04 22:00
comments: true
categories: [ios, objective-c, malcom]
---

I’ve been working with 
[Malcom](https://github.com/MyMalcom/malcom-lib-ios) library for quite some time at work, but I decided to use it for personal apps lately too.

It’s what I call a 
**problem-solver library**
, because with only one integration you have powerful analytics, a wrapper for your ads and 
VERY simplified notifications handling in iOS. You can take a peek to all of their features 
[in their website](http://www.mymalcom.com/en/).

Programming-wise you only have to suffer a rather annoying configuration, but it’s totally worth your time. Once done, you can forget about it.

###In your code


Use the static library downloaded from 
[this address](https://github.com/MyMalcom/malcom-lib-ios/tree/master/Libraries/static%20library/lib) in your project, add these frameworks to your project (the real pain in the ass):

*MediaPlayer.framework

	
*AVFoundation.framework

	
*CFNetwork.framework

	
*SystemConfiguration.framework

	
*MobileCoreServices.framework

	
*QuartzCore.framework

	
*CoreTelephony.framework

	
*CoreLocation.framework

	
*AudioToolbox.framework

	
*MessageUI.framework

	
*CoreGraphics.framework

	
*libz.1.dylib

	
*iAd.framework (only if you want ads from iAd in your project)Only two ministeps left.

In your target, in your production scheme add in 
**Other C Flags**
 section this flag:

-DDISTRIBUTION=1

And in 
**Other link flags**
 add:

-all_load -ObjC

And, with everything configured properly, this simple code in 
**application didFinishLaunchingWithOptions**
 of your 
**AppDelegate**
 will do the trick:

[MalcomLib initWithUUID:@"MALCOM_GENERATED_APP_UUID" andSecretKey:@"YOUR_SECRET_KEY" withAdId:@"FILL_ONLY_IF_YOU_USE_ADS"];

###In the site


You can create a free account in 
[their site](https://malcom.mymalcom.com/en/registerform). Then you register your app, configure the modules you’d like to use and that’s all.

###The magic


My most loved feature of it all: its push api. It takes away the annoyance of handling the apns server side. Take a look to its über simple 
API 
[in this pdf file](http://www-dev.mymalcom.com/resources-files/API-interna-APNS-v2_english.pdf).

For example, with a simple curl like this one you can deliver a notification to all your users (in a sandbox environment).

curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -u my_malcom_login:my_malcom_password -d '{"push":{"text":"This is a test push message"}}'  https://api.mymalcom.com/v2-SANDBOX/apns/applications/MALCOM_GENERATED_APP_UUID/push

The push module is very complete, you can segment by user, by groups, tags, and whatever.