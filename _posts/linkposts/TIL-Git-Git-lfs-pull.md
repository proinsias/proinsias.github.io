---
layout: single
title: "(TIL) Git: LFS Pull"
date:
modified:
---

You can pull from a Git LFS repository using a normal `git pull`.
No explicit commands are needed to retrieve Git LFS content.
However, if the `checkout` fails for an unexpected reason,
you can download any missing Git LFS content for the current commit with `git lfs pull`.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
