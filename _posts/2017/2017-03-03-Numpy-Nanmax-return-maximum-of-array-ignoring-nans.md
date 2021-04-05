---
layout: single
title: "Numpy: Return maximum of array ignoring NaNs using nanmax"
date: 2017-03-03 22:43
modified: 2017-03-03 22:43
categories: til
tags:
  - numpy
  - til
---

```python
>>> import numpy as np
>>> np.nanmax([1, 2, np.nan])
2.0
```

Via [scipy.org](https://docs.scipy.org/doc/numpy/reference/generated/numpy.nanmax.html#numpy.nanmax).
