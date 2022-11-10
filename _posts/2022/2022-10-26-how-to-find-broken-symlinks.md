---
modified: '2022-10-26 09:34 -0400'
date: '2022-10-26 09:34 -0400'
layout: single
published: true
title: How to find broken symlinks
excerpt: Find stale symlinks optimally
categories: til
tags:
    - til
    - nix
---

The portable way to find broken symbolic links, including cyclic links, is:

```bash
find /path/to/search -type l -exec test ! -e {} \; -print
```

Via [stackexchange.com](https://unix.stackexchange.com/a/49470/198328).

To understand the options above, check out this
[explanation](https://explainshell.com/explain?cmd=find+%2Fpath%2Fto%2Fsearch+-type+l+-exec+test+%21+-e+%7B%7D+%5C%3B+-print)
from [explainshell.com](https://explainshell.com/).
