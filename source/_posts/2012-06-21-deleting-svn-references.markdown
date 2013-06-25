---
layout: post
title: "Deleting .svn references"
date: 2012-06-21 22:00
comments: true
categories: terminal
---

I always forget this little snippet so…

find . -name .svn -type d -print0 | xargs -0 rm -rf

This will delete all .svn references in a directory and its subdirectories, no questions asked. Use with care.