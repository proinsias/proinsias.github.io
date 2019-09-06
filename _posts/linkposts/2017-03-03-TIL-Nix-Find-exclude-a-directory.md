---
layout: single
title: "(TIL) Nix: Exclude A Directory With Find"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
---

Using `find` is a handy way to track down files that meet certain criteria.
However, if there are directories full of irrelevant files, you may end up
with a lot of noise. What you want to do is exclude or ignore such
directories. For example, you probably don't want `find` to return results
from the `.git` directory of your project.

Specific directories can be excluded by combining the `-not` and `-path`
arguments.

For instance, to see all files modified within the last 10 days, but not
including anything in the `.git` directory, run the following:

```bash
find . -type f -not -path './.git/*' -ctime -10
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
