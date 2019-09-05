---
layout: single
title: "(TIL) Numpy: Set number of decimal places using set_printoptions"
date: 2017-10-12 15:40
modified: 2017-10-12 15:40
---

```python
> import numpy as np
> np.set_printoptions(precision=4, )
> print(np.array([1.123456789]))
[ 1.1235]
```

Via [Invibe.net](http://blog.invibe.net/posts/2015-01-07-the-right-imports-in-a-notebook.html).
