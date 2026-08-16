---
layout: single
title: "Matplotlib: Get current axis"
date: 2017-03-10
last_modified_at: 2026-08-16 02:17:31
excerpt: Using the gca command
categories:
    - til
tags:
    - matplotlib
    - plot
    - til
    - visualization
---

`matplotlib.pyplot.gca(**kwargs)` gets the current `Axes` instance on the
current figure matching the given keyword args, or create one.

```python
import matplotlib.pyplot as plt

fig = plt.figure()
ax = plt.gca()
ax.scatter(x, y)
```

Via
[StackOverflow](https://stackoverflow.com/questions/18773662/scatter-plot-logarithmic-scale/18774741).
