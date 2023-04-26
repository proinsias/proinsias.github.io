---
layout: single
title: 'Matplotlib: Use logarithmic scale'
date: 2017-03-10
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the set_xscale and set_yscale commands
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

fig = plt.figure()
ax = plt.gca()
ax.scatter(x, y)
ax.set_yscale('log')
ax.set_xscale('log')
```

Via [StackOverflow](http://stackoverflow.com/a/18774741/1257318).
