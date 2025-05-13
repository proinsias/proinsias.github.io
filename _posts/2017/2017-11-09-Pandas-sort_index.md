---
layout: single
title: "Pandas: sort_index"
excerpt: Sort a dataframe by index
date: 2017-11-09 12:35
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - pandas
    - til
---

<!-- textlint-disable stop-words -->

Dataframes have a new `sort_index` method to sort a dataframe by index.
This is equivalent to the deprecated `sort` method with the `columns` argument set to
`None.

<!-- textlint-enable stop-words -->

```python
import pandas as pd
df = pd.DataFrame([1, 2, 3, 4, 5], index=[100, 29, 234, 1, 150], columns=['A'])
df.sort_index(inplace=True)
print(df.to_string())
     A
1    4
29   2
100  1
150  5
234  3
```

Via [Stack Overflow](http://stackoverflow.com/a/22211821/1257318).
