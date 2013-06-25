---
layout: post
title: "Can't compile perfectly good files in Xcode 4.5? "
date: 2012-10-03 22:00
comments: true
categories: xcode
---

This kept happening to me: perfect code that compiled before doesn’t even compile now. Any project.

A major shitstorm.

ld: in /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk/usr/lib/system/libsystem_sim_m.dylib, can't open file, errno=-22 for architecture i386

Turns out that an update of the 
**Command Line Tools**
 that popped on my Xcode was one for version 4.5.1 but the update wasn’t still pushed to the Mac App Store. Waiting and installing it solved the problem.

![](http://mrm.perry.es/uploads/admin/image/image/14/thumb_apple-xcode-icon.png)

Still, what a hard time it gave me.