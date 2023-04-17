---
layout: single
title: 'Python: Collect garbage'
date: 2017-04-05
last_modified_at: 2023-01-10
excerpt: Using the gc module
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
