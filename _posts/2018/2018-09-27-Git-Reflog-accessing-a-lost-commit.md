---
layout: single
title: "Git: Accessing A Lost Commit"
excerpt: Using the git reflog command
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

If you have lost track of a recent commit (perhaps you did a reset), you
can generally still get it back. Run `git reflog` and look through the
output to see if you can find that commit. Note the sha value associated
with that commit. Let's say it is `39e85b2`. You can peruse the
details of that commit with `git show 39e85b2`.

From there, the utility belt that is git is at your disposal. For
example, you can `cherry-pick` the commit or do a `rebase`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
