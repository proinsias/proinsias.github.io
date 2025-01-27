---
layout: single
title: "Git: Stashing Only Unstaged Changes"
excerpt: Using the k flag
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:08:18
categories:
    - til
tags:
    - git
    - til
---

If you have both staged and unstaged changes in your project, you can
perform a stash on just the unstaged ones by using the `-k` flag. The
staged changes will be left intact ready for a commit.

```bash
$ git status
On branch master
...
Changes to be committed:

    last_modified_at: 2018-09-27 10:14   README.md

Changes not staged for commit:

    last_modified_at: 2018-09-27 10:14   app/models/user.rb

$ git stash -k
Saved working directory and index state ...

$ git status
On branch master
...
Changes to be committed:

    last_modified_at: 2018-09-27 10:14   README.md
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
