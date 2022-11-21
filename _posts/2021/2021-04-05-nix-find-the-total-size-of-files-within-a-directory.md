---
layout: single
title: 'Nix: Find the total size of files within a directory'
excerpt: du command to the rescue!
date: 2021-04-05
modified: 2022-11-08
categories: til
tags:
    - nix
    - til
---

Say you need to find the total size of jpegs within a directory with subdirectories.
The following command has you covered:

```bash
find ./photos/john_doe -type f -name '*.jpg' -exec du --human-readable --total {} + | grep total$
```

Via [SO](https://unix.stackexchange.com/a/41552/198328).
