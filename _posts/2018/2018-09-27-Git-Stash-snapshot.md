---
layout: single
title: "Git: Snapshot"
date: 2018-09-27 10:14
modified: 2018-09-27 10:14
categories: til
tags:
  - git
  - til
---

To save a snapshot of your current work in git, try this command:

```shell
git stash save "snapshot: $(date)" && git stash apply "stash@{0}"
```

This saves your current work in a timestamped stash, without removing it.
In Hashrocket's dotmatrix this command is aliased to `git snapshot`.

Via [jwworth/til](https://github.com/jwworth/til).
