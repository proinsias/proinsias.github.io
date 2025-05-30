---
layout: single
title: "Git: List All Files Changed Between Two Branches"
excerpt: Using git diff --name-only master
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

The `git-diff` command can help with finding all files that have changed
between two branches. For instance, if you are at the `HEAD` of your current
feature branch and you'd like to see the list of files that have changed
since being in sync with the `master` branch, you'd formulate a command like
the following:

```bash
git diff --name-only master
```

The `--name-only` flag is important because it cuts out the rest of the
non-essential output.

You'll want to list the _older_ branch first and the current branch second
as a way of showing what has changed from the original branch to get to the
current branch.

Though the example shows the use of _branches_ any git reference can be used
to see what has changed between two commits.

See `man git-diff` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
