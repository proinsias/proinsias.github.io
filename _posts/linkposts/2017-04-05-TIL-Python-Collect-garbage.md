---
layout: single
title: "(TIL) Python: Collect garbage"
date: 2017-04-05
modified: 2017-04-05
---

If you have a variable with a large memory footprint, you can force garbage collection
using the `gc` Garbage Collector module:

```python
big_variable = None
gc.collect()  # Run a full garbage collection.
```

Via [python.org](https://docs.python.org/3/library/gc.html).
