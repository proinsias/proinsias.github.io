---
layout: single
title: "Git: LFS Clone"
date: 2018-09-27 10:14
modified: 2018-09-27 10:14
categories: til
tags:
  - git
  - til
---

Once Git LFS is installed, you can clone a Git LFS repository as normal using `git clone`.
At the end of the cloning process Git will `checkout` the default branch (usually `master`),
and any Git LFS files needed to complete the `checkout` process will be automatically downloaded for you.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
