---
layout: single
title: 'Shell: Dedup PATH variable'
date: 2022-06-25 19:17
modified: 2022-10-31 19:17
excerpt: Perl to the rescue!
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

Via [SO](https://web.archive.org/web/20220818180922/https://stackoverflow.com/questions/44232009/how-to-handle-duplicates-in-my-path-variable/44232192).
