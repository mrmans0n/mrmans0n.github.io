---
layout: post
title: "Android's Camera Intent killing my Application"
date: 2013-04-25 22:00
comments: true
categories: [android, rant]
---

Working with the camera 
**is always a pain in the ass**
. But at least in Android we have Intents. So, with little code we are able to get a working 300×300 thumbnail or even a picture with the best quality the device can offer. So I used it for a project few days ago because the project was in a hurry.

But things 
**got weird.**

The information stored in a Singleton was disappearing without a trace, and the information about sessions and current user of the app were nowhere to be found. Then a friend pointed me in the right direction, asking me to log something in the onCreate method of the current application just in case 
**the SO was killing the application**
. And it was, indeed.

I had to perform some nasty tricks in the Singleton storing the session information, such as persisting some of the objects in SharedPreferences in Strings by converting them to 
JSON, and the ones I couldn’t were implemented as Serializable objects and stored them in files in the application internal storage. It felt dirty and unnecessary, but had to be done. So if you can’t trust the system to persist your application memory data, I just don’t know what can you trust.