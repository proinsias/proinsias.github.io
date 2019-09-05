---
layout: single
title: "(TIL) Matplotlib: Add title to collection of plots"
date:
modified:
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
