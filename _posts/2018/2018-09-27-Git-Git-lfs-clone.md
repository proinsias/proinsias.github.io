---
layout: single
title: "Git: LFS Clone"
excerpt: How LFS integrates with git
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

Once Git LFS is installed, you can clone a Git LFS repository as normal using `git clone`.
At the end of the cloning process Git will `checkout` the default branch (usually `master`),
and any Git LFS files needed to complete the `checkout` process will be automatically downloaded for you.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
