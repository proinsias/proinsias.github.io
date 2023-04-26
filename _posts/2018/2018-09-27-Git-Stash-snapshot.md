---
layout: single
title: 'Git: Snapshot'
date: 2018-09-27 10:14
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - git
    - til
---

To save a snapshot of your current work in git, try this command:

```shell
git stash save "snapshot: $(date)" && git stash apply "stash@{0}"
```

This saves your current work in a timestamped stash, without removing it.

Via [jwworth/til](https://github.com/jwworth/til).
