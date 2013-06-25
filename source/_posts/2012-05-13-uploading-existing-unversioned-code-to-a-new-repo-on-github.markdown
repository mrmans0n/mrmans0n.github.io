---
layout: post
title: "Uploading existing unversioned code to a new repo on GitHub"
date: 2012-05-13 22:00
comments: true
categories: git
---

I always seem to forget how to solve this problem, and it always starts the same way: me wanting to upload an already existent code to my repository. In case you never did this you should probably follow 
[GitHub’s tutorial](http://help.github.com/mac-set-up-git/) first.

Basically the setup is as follows:

$ git init
$ git commit -am "Initial commit."
$ git remote add origin git git@github.com:your_user/YourProject.git
$ git push -u origin master

But sometimes, if you’ve created the repository on GitHub and used their automatic generation of 
**README.md**
 and 
**.gitignore**
 files, you can get this fugly error:

$ git push -u origin master
To git@github.com:your_user/YourProject.git
 ! [rejected]        master -> master (non-fast-forward)
error: failed to push some refs to 'git@github.com:your_user/YourProject.git'
To prevent you from losing history, non-fast-forward updates were rejected
Merge the remote changes (e.g. 'git pull') before pushing again.  See the
'Note about fast-forwards' section of 'git push --help' for details.

Meaning 
there is some stuff here that differs with your local repo and I don’t know what the fuck should I do with it.

The solution is simple and I always seem to forget it. You should pull from the remote first, and then push it again. It goes like this:

$ git pull origin master
From git@github.com:your_user/YourProject.git
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 .gitignore |   16 ++++++++++++++++
 README.md  |    4 ++++
 2 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 .gitignore
 create mode 100644 README.md

And then:

$ git push
Counting objects: 112, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (98/98), done.
Writing objects: 100% (111/111), 1.03 MiB, done.
Total 111 (delta 18), reused 0 (delta 0)
To git@github.com:your_user/YourProject.git
   fcb5a5b..960bd64  master -> master

Problem solved.

But beware, following these steps with a GitHub generated 
**.gitignore**
 file would result in the 
gitignored files being uploaded. Either you download or create your own 
**.gitignore**
 file prior to the first commit, or you delete them manually, like this:

$ git rm --cached filename_to_delete

For individual files, or this way:

$ git rm -r --cached directory_to_delete/

for directories. Then you should commit and push:

$ git commit -am "Deleted .gitignore files remotely"
$ git push

Another problem solved.