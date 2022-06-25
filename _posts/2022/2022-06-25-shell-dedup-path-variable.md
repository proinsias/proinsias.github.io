---
layout: single
title: "Shell: Dedup PATH variable"
date: 2022-06-25 19:17
modified: 2022-06-25 19:17
categories: til
tags:
  - bash
  - path
  - shell
  - til
---

How to handle duplicates in your PATH variable? Use the following one liner:

```shell
PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"
```

Via [SO](https://stackoverflow.com/a/44232192/1257318).
