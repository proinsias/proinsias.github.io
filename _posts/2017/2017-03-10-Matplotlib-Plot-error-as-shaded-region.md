---
layout: single
title: 'Matplotlib: Plot error as shaded region'
date: 2017-03-10
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the fill_between command
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
import numpy as np

x = np.linspace(0, 30, 30)
y = np.sin(x/6*np.pi)
error = np.random.normal(0.1, 0.02, size=y.shape)
y += np.random.normal(0, 0.1, size=y.shape)

plt.plot(x, y, 'k', color='#CC4F1B')
plt.fill_between(
    x, y-error, y+error,
    alpha=0.5, edgecolor='#CC4F1B', facecolor='#FF9848',
    linewidth=4, linestyle='dashdot', antialiased=True,
    )
plt.show()
```

Via [StackOverflow](http://stackoverflow.com/a/12958534/1257318).
