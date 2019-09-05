---
layout: single
title: "(TIL) Nix: Sorted human readable sizes"
date:
modified:
---

```bash
du -hsc * | sort -h
```

> What each option means for du:
>
> * h: show sizes in human readable format (1K, 1M, 1G, ...)
> * s: summarize: display only a total for each argument
> * c: also display a grand total
>
> The `-h` option on `sort` makes it understand the `-h` format (human readable) on `du`.

Via [SuperUser](https://superuser.com/a/1007302).
