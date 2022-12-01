---
layout: single
title: 'Nix: Sorted human readable sizes'
excerpt: Using the --human-numeric-sort flag with sort
date: 2017-03-03
modified: 2022-11-30
categories: til
tags:
    - nix
    - til
---

```bash
du -hsc * | sort -h
```

> What each option means for du:
>
> -   -h (or --human-readable): show sizes in human readable format (1K, 1M, 1G, ...)
> -   -s (or --summarize): display only a total for each argument
> -   -c (or --total): also display a grand total
>
> The `-h` (or `--human-numeric-sort`) option on `sort` makes it understand the `-h` format (human readable) on `du`.

Via [SuperUser](https://superuser.com/a/1007302).
