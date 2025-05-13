---
layout: single
title: "Git: Two ways of squashing commits"
excerpt: Use git merge to squash large number of commits
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

It is handy to squash down your commits before merging your PR with
`my-new-cool-feature`. You can either squash them down by doing an interactive
rebase like so:

```bash
git checkout my-new-cool-feature
git rebase -i master
```

This will open up your `$EDITOR` of choice and you are free to pick and choose
which commits to squash together.

This might be tedious if you have a big number of commits to squash together.
Very tedious. TIL that you can use `git merge` to squash your commits, all in
one go.

```bash
git checkout master
git merge --squash my-cool-new-feature
```

This will leave all of your changes staged on `master`, ready to be committed as
one.

Via [thoughtbot/til](https://github.com/thoughtbot/til).
