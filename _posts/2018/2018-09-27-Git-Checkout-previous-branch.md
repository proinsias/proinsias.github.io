---
layout: single
title: 'Git: Checkout Previous Branch'
date: 2018-09-27 10:14
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - git
    - til
---

Git makes it easy to checkout the last branch you were on.

```bash
git checkout -
```

This is shorthand for `git checkout @{-1}` which is a way of referring to
the previous (or last) branch you were on. You can use this trick to easily
bounce back and forth between `master` and a feature branch.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
