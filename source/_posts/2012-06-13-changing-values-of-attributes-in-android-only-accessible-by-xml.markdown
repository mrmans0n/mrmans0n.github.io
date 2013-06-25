---
layout: post
title: "Changing values of attributes in Android only accessible by XML"
date: 2012-06-13 22:00
comments: true
categories: [android, java, reflection]
---

I had to use today the 
**cropToPadding**
 attribute for an ImageView in Android. It’s the way to go if you want to mimic 
Aspect Fill scaling with Clipped Subviews from iOS, by using it and 
**centerCrop**
 as scaleType.

For example, if I wanted to do it from a layout, it would be like this.

Pretty simple.

But the problem is… can I do this programmatically?

The short answer is 
not directly. You have no setCropToPadding(true) in the 
API for 
[ImageView](http://developer.android.com/reference/android/widget/ImageView.html).

So, if you want to set a value using a non-existent accessor, you have to do either inflating a style 
XML or with a little hack. I’m not fond of hacks because they tend to give you problems with unreleased versions of the OS, but in this case, it’s kind of a big deal working it out with 
XML defined attributes.

The hacky way that saved my ass today is this.

Worked like a charm.