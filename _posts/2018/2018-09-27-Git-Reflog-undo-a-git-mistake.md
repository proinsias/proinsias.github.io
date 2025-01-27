---
layout: single
title: "Git: Undo a Git Mistake"
excerpt: Using the git reflog command
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:05:18
categories:
    - til
tags:
    - git
    - til
---

`git reflog` is a record of your actions in Git. With this command,
you can undo almost any Git mistake.

```bash
$ git reflog

4bd0090 HEAD@{0}: <bad place>
46bd839 HEAD@{1}: <bad place>
967e214 HEAD@{2}: <last good place>
46bd839 HEAD@{3}: <good place>
967e214 HEAD@{4}: <good place>

$ git reset --hard HEAD@{2}
```

Via [jwworth/til](https://github.com/jwworth/til).
