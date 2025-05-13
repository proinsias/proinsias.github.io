---
layout: single
title: "Pandas: Split string column into separate columns"
excerpt: Using the expand option of pd.Series.str.split
date: 2021-06-14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - pandas
    - string
    - til
---

I use [`pd.Series.str.split()`](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.str.split.html#pandas-series-str-split)
a lot for feature engineering, but I recently learned of a useful option `expand` for this function.
This option if set to the non-default value of `True` will split strings into separate columns.

```python
>>> import pandas as pd
>>> s = pd.Series(
        data = [
            'abc,def,ghi',
            'aaa,bbb,ccc',
            '1,2,3'
        ]
    )
>>> s.str.split(
        pat=',',
    )
0     [abc, def, ghi]
1     [aaa, bbb, ccc]
2           [1, 2, 3]
dtype: object
>>> s.str.split(
        pat=',',
        expand=True,
    )
     0    1     2
0  abc  def   ghi
1  aaa  bbb   ccc
2    1    2     3
```
