---
layout: single
title: "Git: LFS Pull"
date: 2018-09-27 10:14
modified: 2018-09-27 10:14
categories: til
tags:
  - git
  - til
---

You can pull from a Git LFS repository using a normal `git pull`.
No explicit commands are needed to retrieve Git LFS content.
However, if the `checkout` fails for an unexpected reason,
you can download any missing Git LFS content for the current commit with `git lfs pull`.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
