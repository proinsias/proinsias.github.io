---
layout: single
title: 'Git: Clone a specific branch'
date: 2021-06-14 19:51
modified: 2021-06-14 19:51
categories: til
tags:
    - git
    - til
---

If you want a specific branch of a repo, rather than running:

```shell
git clone <remote-repo>
git checkout <branch-name>
```

you can combine these commands:

```shell
git clone --branch <branch-name> <remote-repo>
```

If you **only** want a specific branch, you can use the `--single-branch` option:

```shell
git clone --single-branch --branch <branch-name> <remote-repo>
```

Via [SO](https://stackoverflow.com/a/1911126/1257318).
