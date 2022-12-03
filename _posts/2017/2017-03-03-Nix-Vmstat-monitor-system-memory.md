---
layout: single
title: 'Nix: Monitor System Memory with vmstat'
excerpt: Can set a sampling period too
date: 2017-03-03
modified: 2022-12-02
categories: til
tags:
    - nix
    - til
---

`vmstat` allows the user to monitor virtual memory statistics such as processes,
memory, paging, block IO, traps, disks and cpu activity.

The user can specify a sampling period.

```bash
$ vmstat 1
procs -----------memory----------
r  b   swpd   free   buff  cache
4  0 920708  74004  36324 114148
---swap-- -----io---- -system--
si   so    bi    bo   in   cs
29   53   125   112  298  212
----cpu----
us sy id wa
26  6 65  3
```

The above will run `vmstat` every second and display system virtual memory usage
such as:

-   `r` number process waiting to run,
-   `b` blocked process,
-   `swpd` virtual memory used,
-   `free` idle memory,
-   `bi`, `bo` number of blocks sent and received from disk,
-   `us` time spent in user code, or
-   `sy` time spent in kernel code.

As current Linux blocks are 1024 bytes, `vmstat` uses the same unit of measurement
for memory.

Via [enki.com](https://app.enkipro.com/#/insight/55c93d553d25fc2e0079a8b4).
