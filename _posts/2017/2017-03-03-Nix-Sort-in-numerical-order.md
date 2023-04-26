---
layout: single
title: 'Nix: Sort In Numerical Order'
excerpt: Using the --numeric-sort flag
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

By default, the `sort` command will sort things alphabetically. If you have
numerical input though, you may want a numerical sort. This is what the `-n`
flag is for.

If I have a directory of files with numbered names, sort doesn't quite do
the job by itself.

```bash
$ ls | sort
1.txt
10.txt
11.txt
12.txt
2.txt
3.txt
4.txt
5.txt
```

with the `-n` (or `--numeric-sort`) flag, I get the sort order I am looking for.

```bash
$ ls | sort -n
1.txt
2.txt
3.txt
4.txt
5.txt
10.txt
11.txt
12.txt
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
