---
layout: single
title: "Git: LFS Fetch"
excerpt: Extra configuration
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 17:55:15
categories:
    - til
tags:
    - git
    - til
---

Git LFS typically only downloads the files needed for commits that you actually checkout locally.
However, you can force Git LFS to download extra content for other recently modified branches using
`git lfs fetch --recent`.

Git LFS considers any branch or tag containing a commit newer than seven days as recent.
You can configure the number of days considered as recent by setting the `lfs.fetchrecentrefsdays` property:

```bash
# Download Git LFS content for branches or tags updated in the last 10 days.
$ git config lfs.fetchrecentrefsdays 10
```

By default, `git lfs fetch --recent` will only download Git LFS content for the commit at the tip of a recent branch or
tag.

However you can configure Git LFS to download content for earlier commits on recent branches and tags by configuring the
`lfs.fetchrecentcommitsdays` property:

```bash
# Download the latest 3 days of Git LFS content for each recent branch or tag.
$ git config lfs.fetchrecentcommitsdays 3
```

Use this setting with care: if you have fast moving branches, this can result in a huge amount of data being downloaded.
However it can be useful if you need to review interstitial changes on a branch, cherry picking commits across branches,
or rewrite history.

You can also elect to fetch all Git LFS content for your repository with `git lfs fetch --all`.

In some situations you may want to only download a subset of the available Git LFS content for a particular commit.

You can exclude a pattern or subdirectory using `git lfs fetch -X` (or `--exclude`):

```bash
git lfs fetch -X "Assets/**"
```

You can include a particular pattern or subdirectory using `git lfs fetch -I` (or `--include`):

```bash
git lfs fetch -I "*.ogg,*.wav"
```

If you combine includes and excludes, only files that match an include pattern and do not match an exclude pattern will
be fetched:

```bash
git lfs fetch -I "Assets/**" -X "*.gif"
```

Excludes and includes support the same patterns as `git lfs track` and `.gitignore`.

You can make these patterns permanent for a particular repository by setting the `lfs.fetchinclude` and
`lfs.fetchexclude` config properties:

```bash
git config lfs.fetchinclude "Assets/**"
git config lfs.fetchexclude "*.gif"
```

These settings can also be applied to every repository on your system by appending the `--global` option.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
