---
layout: single
title: "Nix: PID Of The Current Shell"
excerpt: Using a special parameter of bash
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
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

See the `Special Parameters` section of `man bash` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
