---
layout: single
title: "(TIL) Matplotlib: Save plot to file"
date:
modified:
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
