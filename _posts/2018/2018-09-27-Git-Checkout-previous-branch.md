---
layout: single
title: "Git: Checkout Previous Branch"
excerpt: Using the hyphen shorthand
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
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
