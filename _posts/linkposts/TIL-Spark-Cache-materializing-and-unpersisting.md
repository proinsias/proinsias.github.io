---
layout: single
title: "(TIL) Spark: Materializing and Unpersisting Cache"
date:
modified:
---

If you want to reuse a dataframe `df` without having to recreate it,
you can use `df.cache()` to tell Spark to keep the dataframe in memory.

`cache()` is a transformation, which are lazy in Spark,
and so won't take effect until an action is called.
To force the effect of `cache()` (or another transformation),
you can use the simple action `count()`, e.g.:

```python
df.cache().count()
```

This is called 'materializing the cache'.

Note that when the `count` action has to also cache data,
it takes longer than a simple `count`.

If you want to tell Spark to no longer keep the dataframe in memory,
use `df.unpersist()` to manually evict the data from memory cache.
