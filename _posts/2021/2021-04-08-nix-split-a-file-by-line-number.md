---
layout: single
title: 'Nix: Split a file by line number'
excerpt: Extra options for output file names
date: 2021-04-08
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

I've been using the `split` command for a while to split a file into multiple files with at most say 1000 lines per file:

```bash
>>> wc --lines file.txt
2325 file.txt
>>> split --lines 500 file.txt file
>>> wc --lines file??
1000 fileaa
1000 fileab
325 fileac
2325 total
```

What I didn't realize is that there are now options to use a numeric suffix rather than alphabetic,
and also to specify the file extension to use:

```bash
>>> split --lines 500 --numeric-suffixes --additional-suffix=.txt file.txt file
>>> wc --lines file??.txt
1000 file00.txt
1000 file01.txt
325 file02.txt
2325 total
```

Via [SO](https://web.archive.org/web/20220818174137/https://unix.stackexchange.com/questions/32626/split-a-file-by-line-and-have-control-over-resulting-files-extension/74166).
