---
layout: post
title: "Fixing malformed JSON strings without quotation marks in its attribute name"
date: 2012-06-05 22:00
comments: true
categories: [java, json]
---

Sometimes you find 
JSON web services that doesn’t respect the format, just because javascript and some parsers also work that way. But you want to use it with a parser that only allows strict implementations.

So here you have a little piece of code that saved my butt (in Java). It uses String class 
**replaceAll**
 method.

malformedJson.replaceAll("(\\s)*([a-zA-Z0-9_]+?):", "\"$2\":");

I’m not the most knowledgeable guy with regular expressions but that one is simple enough.