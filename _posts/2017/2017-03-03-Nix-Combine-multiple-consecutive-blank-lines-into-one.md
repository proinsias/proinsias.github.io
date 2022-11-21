---
layout: single
title: 'Nix: Combine multiple consecutive blank lines into one'
excerpt: Using the squeeze-blank option
date: 2017-03-03
modified: 2022-11-15
categories: til
tags:
    - nix
    - til
---

`cat --squeeze-blank` (or `cat -s` for short) will suppress repeated empty
output lines.

```bash
$ echo  -e "abc


def" | cat
abc


def
$ echo  -e "abc


def" | cat -s
abc

def
```

Via [UnixToolTip](https://twitter.com/UnixToolTip/status/829005635391991808).
