---
layout: single
title: "(TIL) Git: Stashing Only Unstaged Changes"
date:
modified:
---

If you have both staged and unstaged changes in your project, you can
perform a stash on just the unstaged ones by using the `-k` flag. The
staged changes will be left intact ready for a commit.

```bash
$ git status
On branch master
...
Changes to be committed:

    modified:   README.md

Changes not staged for commit:

    modified:   app/models/user.rb

$ git stash -k
Saved working directory and index state ...

$ git status
On branch master
...
Changes to be committed:

    modified:   README.md
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
