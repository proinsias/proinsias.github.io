---
layout: single
title: "Finding nulls in DataFrames"
excerpt: Handy one liners I use all the time
date: 2021-04-01
last_modified_at: 2023-04-26 13:22:37
categories:
    - tips
tags:
    - pandas
    - tips
---

<!--lint disable list-item-bullet-indent-->

<!--lint enable list-item-bullet-indent-->

Given a `pandas.DataFrame` with some nulls, e.g.:

```python
>>> import numpy as np
>>> import pandas as pd
>>> df = (
    pd.DataFrame(
        data={
            'a': [1, np.nan, 3, 4, 5, np.nan],
            'b': [np.nan, 2, 3, 4, 5, 6],
            'c': [1, 2, 3, 4, 5, 6],
        },
    )
)
>>> df
     a    b  c
0  1.0  NaN  1
1  NaN  2.0  2
2  3.0  3.0  3
3  4.0  4.0  4
4  5.0  5.0  5
5  NaN  6.0  6
```

you can easily list which columns have nulls:

```python
>>> df.columns[pd.isnull(df).sum() > 0].values
array(['a', 'b'], dtype=object)
```

and which rows have nulls:

```python
>>> df[df.isnull().any(axis='columns')].index.values
array([0, 1, 5])
```
