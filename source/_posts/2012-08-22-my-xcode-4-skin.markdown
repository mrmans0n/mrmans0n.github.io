---
layout: post
title: "My XCode 4 skin"
date: 2012-08-22 22:00
comments: true
categories: xcode
---

I use a lot my IDEs during everyday’s work, so I try to minimize the strain done to my eyes. And I find it more comfortable if I use dark backgrounds, hence my themes.

[![](http://mrm.perry.es/uploads/admin/image/image/12/thumb_xcode_desktop.png)](http://mrm.perry.es/uploads/admin/image/image/12/xcode_desktop.png)

My theme is based on 
[EGO v2](http://developers.enormego.com/view/ego_xcode_theme_for_xcode_4_egov2) theme, but changing Menlo font for 
[Inconsolata](http://levien.com/type/myfonts/inconsolata.html).

If you want to try, run this on a terminal with XCode closed.

cd ~/Library/Fonts; curl -O http://levien.com/type/myfonts/Inconsolata.otf; mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes; cd ~/Library/Developer/Xcode/UserData/FontAndColorThemes; curl -O https://raw.github.com/gist/3427070/70427af513bc71b011ac65f847435fbe169d2170/EGOv2_Inconsolata.dvtcolortheme

And then activate it in 
**Preferences / Fonts & Colors**
. Regards!