---
layout: single
title: "(TIL) Python: Flushing while printing"
date:
modified:
---

> Since Python 3.3, you can force the normal `print()` function to flush without the need to use
> `sys.stdout.flush()`; just set the `flush` keyword argument to `True`. From the documentation:

```python
print(*objects, sep=' ', end='
', file=sys.stdout, flush=False)
```

> Whether output is buffered is usually determined by file, but if the flush keyword argument is true,
the stream is forcibly flushed.

Via [SO](https://stackoverflow.com/a/23142556).
