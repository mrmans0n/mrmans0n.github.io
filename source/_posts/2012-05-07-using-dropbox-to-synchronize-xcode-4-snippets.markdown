---
layout: post
title: "Using Dropbox to synchronize Xcode 4 snippets"
date: 2012-05-07 22:00
comments: true
categories: [dropbox, ios, xcode]
---

As many of you, devs, I have more than one coding spot: work, home, laptop… And it always bothers me the configuration of the 
IDE.

I’m really fond of my coding snippets in Xcode and it was a big bother to keep them up to date, so I had to think of something… why don’t use a shared folder in Dropbox?

First of all, create a folder within your Dropbox called 
**CodeSnippets**
.

Then you’ll have to 
**delete**
 your current Xcode snippets folder. It’s located at  your user folder 
**/Library/Developer/Xcode/UserData/CodeSnippets**
. Copy its contents (if you want to preserve the ones you already have) to the Dropbox folder you created.

So now the only thing that’s left is linking both directories. Open a terminal and type this:

ln -s ~/Dropbox/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets

And there you go. You only have to repeat these steps in your other computers. You can also share this folder with your team if you want.

Try to avoid any “conflicting copies” from Dropbox in its CodeSnippets directory. Already happened to me, and it kept Xcode crashing. Also, if you’re running Lion or something newer, the 
Library directory of your current user is not visible, so you’ll have to use something like 
[DesktopUtility](http://allmaconline.com/desktop-utility-for-mac/)