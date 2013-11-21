---
layout: post
title: "Introducing Localio"
date: 2013-09-03 17:51
comments: true
categories: ["gem", "i18n", "localization", "ruby"]
---

In my head there has been around a lot of times the possibility of contributing to the OSS community with some gem, so here goes my first contribution there. **Localio** is an automatic localizable file generator. It reads a certain type of file, called **Locfile**, and process it so the different localization files for your app are automatically generated. Android, iOS, Rails and JSON are supported now. The localization information is processed from a Google Drive spreadsheet or a local excel file. [Those spreadsheets must have a specific format for this to work, though.](https://docs.google.com/spreadsheet/ccc?key=0AmX_w4-5HkOgdFFoZ19iSUlRSERnQTJ4NVZiblo2UXc#gid=0)
An example of Locfile:

``` ruby Locfile example
platform :ios

output_path 'Resources/Localizables/'

source :google_drive,
       :spreadsheet => '[Localizables] My Project!',
       :login => 'your_email@gmail.com',
       :password => 'your_password'

formatting :smart # This is optional, formatting :smart is used by default.
```

Anyway, you can [install the gem](http://rubygems.org/gems/localio) and give it a try. Checkout the [README](https://github.com/mrmans0n/localio/blob/master/README.md) file for some documentation. You can also contribute to its Github repo.
Cheers!