---
layout: post
title: "Android maven building borked with latest ADT 22"
date: 2013-05-17 22:00
comments: true
categories: [android, maven]
---

There were some major changes to Android 
SDK layout, mainly moving all the build tools to another directory, with the pretty self-explanatory name “build-tools”.

But since the version of 
**maven-android-plugin**
 almost everybody uses at the moment (3.5.0) can’t handle this, we have to fix it – and be able to 
**WORK**
 and stuff.

Pretty simple, just get the new stable version (at this moment is 3.6.0).

And that should do the trick.

You should change your pom to reflect it, of course. For example:

[...]     
    <build>
        <plugins>
            <plugin>
                <groupId>com.jayway.maven.plugins.android.generation2</groupId>
                <artifactId>android-maven-plugin</artifactId>
                <version>3.6.0</version>
                <extensions>true</extensions>
                <configuration>
                    <sdk>
                        <platform>17</platform>
                    </sdk>
                </configuration>
            </plugin>
            <plugin>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>2.5</version>
                <configuration>
                    <source>1.6</source>
                    <target>1.6</target>
                </configuration>
            </plugin>
        </plugins>
    </build>
[...]

This article was fixed when 3.6.0 came up, as it explained before how to get 3.5.4-
SNAPSHOT working on your local machine.