---
layout: single
title: "Python: Flushing while printing"
excerpt: Using the flush keyword
date: 2017-04-05 05:23
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - python
    - til
redirect_from:
    - /til/Python-Print-flush/
---

> Since Python 3.3, you can force the normal `print()` function to flush without
> the need to use `sys.stdout.flush()`; just set the `flush` keyword argument to
> `True`. From the documentation:

```python
print(*objects, sep=' ', end='', file=sys.stdout, flush=False)
```

> Whether output is buffered is usually determined by file, but if the flush
> keyword argument is true, the stream is forcibly flushed.

Via
[SO](https://stackoverflow.com/questions/230751/how-can-i-flush-the-output-of-the-print-function/23142556).
