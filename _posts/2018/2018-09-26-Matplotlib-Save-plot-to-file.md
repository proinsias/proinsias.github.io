---
layout: single
title: 'Matplotlib: Save plot to file'
date: 2018-09-26 16:16
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - matplotlib
    - plot
    - til
    - visualization
---

It's very straightforward to save a `matplotlib` figure to disk:

```python
import matplotlib.pyplot as plt
# ...
# matplotlib code here.
# ...
plt.savefig('path/to/figure.ext')
```

Via [SO](https://stackoverflow.com/a/18992172).
