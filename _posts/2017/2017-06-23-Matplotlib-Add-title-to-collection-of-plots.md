---
layout: single
title: 'Matplotlib: Add title to collection of plots'
excerpt: Via the matplotlib.pyplot.suptitle command
date: 2017-06-23 16:07
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - matplotlib
    - plot
    - til
    - visualization
---

Use `matplotlib.pyplot.suptitle()` to add a centered title to the figure:

```python
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

data = pd.DataFrame(np.random.randn(500).reshape(100,5), columns=list('abcde'))
axes = data.hist(sharey=True, sharex=True)
plt.suptitle("This is Figure title")
```

Via [StackOverflow](https://stackoverflow.com/a/19625612/1257318).
