---
layout: single
title: "Matplotlib: Get current axis"
date: 2017-03-10
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the gca command
categories:
    - til
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
