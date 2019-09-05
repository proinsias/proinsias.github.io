---
layout: single
title: "(TIL) Pandas: Use dtype to speed up reading with read_csv"
date:
modified:
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
