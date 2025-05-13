---
layout: single
title: "Git: Clone a specific branch"
excerpt: Speed up your git clones
date: 2021-06-14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
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
