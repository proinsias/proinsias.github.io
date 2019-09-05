---
layout: single
title: "(TIL) Matplotlib: Use logarithmic scale"
date:
modified:
---

```python
import matplotlib.pyplot as plt

fig = plt.figure()
ax = plt.gca()
ax.scatter(x, y)
ax.set_yscale('log')
ax.set_xscale('log')
```

Via [StackOverflow](http://stackoverflow.com/a/18774741/1257318).
