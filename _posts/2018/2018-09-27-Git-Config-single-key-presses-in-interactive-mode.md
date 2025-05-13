---
layout: single
title: "Git: Configure to Use Single Key Presses in Interactive Mode"
excerpt: The interactive.singlekey option
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

When staging changes in interactive mode (`git add -p`), you have a number
of options associated with single keys. `y` is _yes_, `n` is _no_, `a` is
_this and all remaining_, and so on.

By default, you have to press _enter_ after making your selection. However,
it can be configured for single key presses. Add the following to your git
configuration file to enable single key presses for interactive mode:

```git
[interactive]
    singlekey = true
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
