---
layout: single
title: 'Jupyter: Show contents of external script'
date: 2017-11-14 15:51
modified: 2017-11-14 15:51
categories: til
tags:
    - jupyter
    - til
---

`%pycat` shows you (in a popup) the syntax highlighted contents of an external file:

```python
> %pycat python_code.py

import numpy
def append_if_not_exists(arr, x):
    if x not in arr:
        arr.append(x)

def some_useless_slow_function():
    arr = list()
    for i in range(10000):
        x = numpy.random.randint(0, 10000)
        append_if_not_exists(arr, x)
```

Via [dataquest.io](https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/).
