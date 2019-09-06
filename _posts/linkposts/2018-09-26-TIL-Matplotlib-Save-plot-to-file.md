---
layout: single
title: "(TIL) Matplotlib: Save plot to file"
date: 2018-09-26 16:16
modified: 2018-09-26 16:16
---

It's very straightforward to save a `matplotlib` figure to disk:

```
import matplotlib.pyplot as plt
# ...
# matplotlib code here.
# ...
plt.savefig('path/to/figure.ext')
```

Via [SO](https://stackoverflow.com/a/18992172).
