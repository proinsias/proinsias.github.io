---
layout: single
title: "Matplotlib: Use logarithmic scale"
date: 2017-03-10
last_modified_at: 2026-08-16 02:17:31
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

Via
[StackOverflow](https://stackoverflow.com/questions/18773662/scatter-plot-logarithmic-scale/18774741).
