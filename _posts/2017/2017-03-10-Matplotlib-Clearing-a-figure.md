---
layout: single
title: "Matplotlib: Clearing a figure"
date: 2017-03-10
last_modified_at: 2023-04-26 13:22:37
excerpt: cla v clf v close
categories:
    - til
tags:
    - matplotlib
    - plot
    - til
    - visualization
---

```python
import matplotlib.pyplot as plt

# Clear an axis, i.e. the currently active axis in the current figure.
# This leaves the other axes untouched.
plt.cla()

# Clear the entire current figure with all its axes.
# This leaves the window opened, such that it may be reused for other plots.
plt.clf()

# Close a window, which will be the current window, if not specified otherwise.
plt.close()
```

Via [StackOverflow](http://stackoverflow.com/a/8228808/1257318).
