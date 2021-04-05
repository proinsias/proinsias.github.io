---
layout: single
title: "Nix: Find the total size of files within a directory"
date: 2021-04-05 15:04
modified: 2021-04-05 15:04
categories: til
tags:
  - nix
  - til
---

Say you need to find the total size of jpegs within a directory with subdirectories.
The following command has you covered:

```bash
find ./photos/john_doe -type f -name '*.jpg' -exec du -ch {} + | grep total$
```

Via [SO](https://unix.stackexchange.com/a/41552/198328).
