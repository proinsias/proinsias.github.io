---
layout: single
title: "Git: Stashing Only Unstaged Changes"
date: 2018-09-27 10:14
modified: 2018-09-27 10:14
categories: til
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

    modified: 2018-09-27 10:14   README.md

Changes not staged for commit:

    modified: 2018-09-27 10:14   app/models/user.rb

$ git stash -k
Saved working directory and index state ...

$ git status
On branch master
...
Changes to be committed:

    modified: 2018-09-27 10:14   README.md
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
