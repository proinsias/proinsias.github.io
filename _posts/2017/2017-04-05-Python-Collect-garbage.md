---
layout: single
title: "Python: Collect garbage"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
categories: til
tags:
  - python
  - til
---

If you have a variable with a large memory footprint, you can force garbage collection
using the `gc` Garbage Collector module:

```python
big_variable = None
gc.collect()  # Run a full garbage collection.
```

Via [python.org](https://docs.python.org/3/library/gc.html).
