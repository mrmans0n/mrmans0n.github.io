---
layout: post
title: "How to fix a broken Android Studio SDK installation"
date: 2013-07-10 18:58
comments: true
categories: [android, android-studio]
---
It just happened to me. If you are in a situation where your Android Studio installation doesn't recognize any Android SDK (instead of a little andy, it shows a folder with a question mark over any Android SDK configured), you just have one diagnosis: **your (hidden) configuration file is corrupted**.

The solution is pretty easy. You just have to add these two lines to your /Application/Android Studio.app/bin/idea.properties: 

```ini
idea.config.path=~/.AndroidStudioPreview/config
idea.system.path=~/.AndroidStudioPreview/system
```

You will be asked to reconfigure, as if it were the first execution of Android Studio.

This saved my life. You're welcome.