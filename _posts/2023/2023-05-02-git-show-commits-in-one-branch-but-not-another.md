---
layout: single
title: 'Git: Show commits in one branch but not another'
excerpt: Using git log
date: 2023-05-02 17:03
last_modified_at: 2023-05-03 01:09:29
categories:
    - til
tags:
    - git
    - til
---

> To see a list of which commits are on one branch but not another, use `git log`:

```shell
git log --no-merges oldbranch ^newbranch
```

> You can list multiple branches to include and exclude, e.g.:

```shell
git log  --no-merges oldbranch1 oldbranch2 ^newbranch1 ^newbranch2
```

The `--no-merges` flag exclude commits that are merges.

> \[You can show\] commits and commit contents from other-branch that are not in your current branch:

```shell
git show @..other-branch
```

> Additionally you can apply the commits from other-branch directly to your current branch:

```shell
git cherry-pick @..other-branch
```

> To show the commits in oldbranch but not in newbranch:

```shell
git log newbranch..oldbranch
```

> To show the diff by these commits (note there are three dots):

```shell
git diff newbranch...oldbranch
```

> \[To\] list all branches \[that\] contain the commits from "branch-to-delete":

```shell
git branch --contains branch-to-delete
```

Via [Stack Overflow](https://stackoverflow.com/questions/1710894/using-git-show-all-commits-that-are-in-one-branch-but-not-the-others).
