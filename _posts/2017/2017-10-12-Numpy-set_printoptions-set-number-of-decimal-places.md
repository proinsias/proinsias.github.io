---
layout: single
title: "Numpy: Set number of decimal places using set_printoptions"
excerpt: Via the precision argument
date: 2017-10-12 15:40
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - numpy
    - til
---

```python
> import numpy as np
> np.set_printoptions(precision=4)
> print(np.array([1.123456789]))
[ 1.1235]
```

Via [laurentperrinet.github.io](https://web.archive.org/web/20210512102316/https:/laurentperrinet.github.io/sciblog/posts/2015-01-07-the-right-imports-in-a-notebook.html).
