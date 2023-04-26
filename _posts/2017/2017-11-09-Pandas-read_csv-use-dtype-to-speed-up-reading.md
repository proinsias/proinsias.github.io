---
layout: single
title: 'Pandas: Use dtype to speed up reading with read_csv'
date: 2017-11-09 12:35
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - pandas
    - til
---

By default, `pandas` will infer the data types of the columns when reading in a csv file.
To speed up this read, you can specify the data types using the `dtype` argument of
`read_csv()`.

For example:

```python
df = pd \
    .read_csv(
        file.csv,
        dtype={
            'a': int,
            'b': np.float64,
            'c': str,
            },
        )
```
