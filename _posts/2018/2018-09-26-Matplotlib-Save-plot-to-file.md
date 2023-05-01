---
layout: single
title: 'Matplotlib: Save plot to file'
excerpt: Using the savefig function
date: 2018-09-26 16:16
last_modified_at: 2023-05-01 17:51:14
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
