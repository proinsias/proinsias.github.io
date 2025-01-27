---
layout: single
title: "Nix: Grep For Files Without A Match"
excerpt: Using the files-without-match flag
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

The `grep` command is generally used to find files whose contents match a
pattern. With the `-L` (`--files-without-match`) flag, `grep` can be used to
find files that don't match the given pattern.

For instance, to find files in the current directory that don't have
`foobar` anywhere in their content, run:

```bash
grep -L "foobar" ./*
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
