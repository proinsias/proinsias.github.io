---
layout: single
title: "Nix: PID Of The Current Shell"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:
  - nix
  - til
---

`$` expands to the process ID of the shell. So, you can see the PID of the
current shell with `echo $$`.

```bash
> echo $$
36609

> zsh

> echo $$
45431

> exit

> echo $$
36609
```

See the `Special Paramaters` section of `man bash` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
