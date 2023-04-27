---
layout: single
title: 'Pandas: Speed up merges'
excerpt: Specify the key column of the merge as the index of your dataframes, then join instead of merge
date: 2017-11-09 12:35
last_modified_at: 2023-04-27 13:36:44
categories:
    - til
tags:
    - pandas
    - til
---

You can improve the speed of a `merge` by first specifying the key column of the merge
as the index of your dataframes,
and then using `join` instead of `merge`:

The following example shows a improvement by a factor of about 10:

```python
>>> import pandas as pd
>>> left = pd.DataFrame(
    {
        'key': ['K0', 'K1', 'K2', 'K3'],
        'A': ['A0', 'A1', 'A2', 'A3'],
    'B': ['B0', 'B1', 'B2', 'B3'],
    }
)
>>> right = pd.DataFrame(
    {
        'key': ['K0', 'K1', 'K2', 'K3'],
        'C': ['C0', 'C1', 'C2', 'C3'],
        'D': ['D0', 'D1', 'D2', 'D3'],
    }
)
>>> left2 = left.set_index('key')
>>> right2 = right.set_index('key')
>>> %timeit result2 = left2.join(right2)
416 µs ± 27.7 µs per loop (mean ± std. dev. of 7 runs, 1000 loops each)
>>> %timeit result = pd.merge(left, right, on='key')
4.81 ms ± 409 µs per loop (mean ± std. dev. of 7 runs, 100 loops each)

```

Via [StackOverflow](https://stackoverflow.com/a/35785302).
