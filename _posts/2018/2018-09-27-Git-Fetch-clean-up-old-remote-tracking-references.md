---
layout: single
title: 'Git: Clean Up Old Remote Tracking References'
excerpt: Using git fetch origin --prune
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 17:55:15
categories:
    - til
tags:
    - git
    - til
---

After working on a Git-versioned project for a while, you may find that
there are a bunch of references to remote branches in your local repository.
You know those branches definitely don't exist on the remote server and
you've removed the local branches, but
you still have references to them lying around. You can reconcile this
discrepancy with one command:

```bash
git fetch origin --prune
```

This will prune all those non-existent remote tracking references which is
sure to clean up your git log (`git log --graph`).

Via [jbranchaud/til](https://github.com/jbranchaud/til).
