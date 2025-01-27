---
layout: single
title: "Git: Staging Stashes Interactively"
excerpt: A partial stash
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:08:18
categories:
    - til
tags:
    - git
    - til
---

The `-p` flag can be used with `git stash`, just as it is used with `git add`,
for interactively staging a stash.

So, if you have changes in your working tree that you want to stash mixed
with ones that you want to keep working with, then you can simply do:

```bash
git stash -p
```

Read more on [interactive
staging](https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging).

Via [jbranchaud/til](https://github.com/jbranchaud/til).
