---
layout: single
title: "(TIL) Git: Checkout Previous Branch"
date:
modified:
---

Git makes it easy to checkout the last branch you were on.

```bash
git checkout -
```

This is shorthand for `git checkout @{-1}` which is a way of referring to
the previous (or last) branch you were on. You can use this trick to easily
bounce back and forth between `master` and a feature branch.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
