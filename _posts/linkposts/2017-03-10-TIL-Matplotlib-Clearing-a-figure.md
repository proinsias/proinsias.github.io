---
layout: single
title: "(TIL) Matplotlib: Clearing a figure"
date: 2017-03-10 14:29
modified: 2017-03-10 14:29
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
