---
layout: single
title: "(TIL) Matplotlib: Get current axis"
date: 2017-03-10 14:17
modified: 2017-03-10 14:17
categories: til
tags:
  - matplotlib
  - plot
  - til
  - visualization
---

`matplotlib.pyplot.gca(**kwargs)` gets the current `Axes` instance on the current
figure matching the given keyword args, or create one.

```python
import matplotlib.pyplot as plt

fig = plt.figure()
ax = plt.gca()
ax.scatter(x, y)
```

Via [StackOverflow](http://stackoverflow.com/a/18774741/1257318).
