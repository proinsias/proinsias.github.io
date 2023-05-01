---
layout: single
title: 'Git: Stashing Untracked Files'
excerpt: Using the untracked flag
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:08:18
categories:
    - til
tags:
    - git
    - til
---

Normally when stashing changes, using `git stash`, git is only going to
stash changes to _tracked_ files. If there are any new files in your project
that aren't being tracked by git, they will just be left lying around.

You might not want these _untracked_ files left behind, polluting your
working copy. Perhaps these files change your projects functionality or
affect the outcome of tests. You just want them out of the way, for the
moment at least.

And so along comes the `-u` or `--untracked` flag.

```bash
$ touch new_file.rb
$ git stash
No local changes to stash
$ git stash -u
Saved working directory and index state WIP ...
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
