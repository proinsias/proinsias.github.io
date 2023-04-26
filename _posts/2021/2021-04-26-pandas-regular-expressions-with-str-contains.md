---
layout: single
title: 'Pandas: Regular expressions with str.contains'
excerpt: How to enable regex flags
date: 2021-04-26
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - pandas
    - regex
    - til
---

The `pd.Series.str.contains` method assumes that it is passed a regular expression for the `pat` input:

```python
>>> import re
>>> import pandas as pd
>>> df = pd.DataFrame()
>>> df['item'] = [1, 2, 3, 4, 5, 6]
>>> df['size'] = ['SMALL', 'small', 'medium', 'large', 'large', 'large']
>>> df
   item    size
0     1   SMALL
1     2   small
2     3  medium
3     4   large
4     5   large
5     6   large
>>> df[df['size'].str.contains(pat='small|medium')]
   item    size
1     2   small
2     3  medium
```

You can also pass regex flags:

```python
>>> df[df['size'].str.contains(pat='small|medium', flags=re.IGNORECASE)]
   item    size
0     1   SMALL
1     2   small
2     3  medium
```

Set `regex=False` to treat `pat` as a plain character sequence.

Via [pandas.pydata.org](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.str.contains.html).
