---
layout: single
title: "(TIL) Nix: Grep For Files Without A Match"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
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
