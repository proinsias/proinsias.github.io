---
layout: single
title: "How to use multiprocessing with pandas"
date: 2019-09-26 13:40
last_modified_at: 2023-04-26 02:04:37
excerpt: Using the aptly named multiprocessing module
categories:
    - tips
tags:
    - multiprocessing
    - pandas
    - parallel
    - tips
---

`pandas` doesn't support parallel processing out of the box,
but you can wrap support for using all of your expensive CPUs around calls to `apply()`.

Say you have a large `Series` or `DataFrame`, and a function you want to `apply` to it:

```python
s = pd.Series(np.arange(10))  # Pretend this is a large Series!


def xx(x):
    return x**2
```

Normally you would `apply` the function as follows:

```python
>>> s.apply(x)
0     0
1     1
2     4
3     9
4    16
5    25
6    36
7    49
8    64
9    81
dtype: int64
```

You can speed up `apply`-ing the function using the following `parallel_apply()` function:

```python
import multiprocessing as mp
import typing

import numpy as np
import pandas as pd
import tqdm


def parallel_apply(
    df_or_s: typing.Union[pd.DataFrame, pd.Series],
    func: typing.Callable,
    n_jobs: int = mp.cpu_count(),
    progress_bar: bool = True,
) -> typing.Union[pd.DataFrame, pd.Series]:
    """
    Implements `df.apply()` or `s.apply()` but using multiple CPUs.
    """
    with mp.Pool(n_jobs) as pool:
        split = np.array_split(df_or_s, n_jobs * 2)
        if progress_bar is True:
            split = tqdm.tqdm(split)

        ret_list = pool.map(func, split)
        if progress_bar is True:
            ret_list = tqdm.tqdm(ret_list)

        output_df_or_s = pd.concat(ret_list)

    return output_df_or_s
```

Then you can get your answer faster:

```python
>>> parallel_apply(s, xx, progress_bar=False)
0     0
1     1
2     4
3     9
4    16
5    25
6    36
7    49
8    64
9    81
dtype: int64
```

There's a similar wrap-around for `df.groupby().apply()`:

```python
def parallel_groupby_apply(
    groupby_df: pd.core.groupby.DataFrameGroupBy,
    func: typing.Callable,
    n_jobs: int = mp.cpu_count(),
    progress_bar: bool = True,
) -> pd.DataFrame:
    """
    Implements `df.groupby().apply()` but using multiple CPUs.
    """
    with mp.Pool(n_jobs) as pool:
        split = [group for _, group in groupby_df]
        if progress_bar is True:
            split = tqdm.tqdm(split)

        ret_list = pool.map(func, split)

        if progress_bar is True:
            ret_list = tqdm.tqdm(ret_list)

        output_df = pd.concat(ret_list)

    return output_df
```

For example:

```python
>>> df = pd.DataFrame(
...    data={
...       'a': [1,1,1,2,2,2,3,3,3,3],
...       'b': np.arange(10),
...    },
...)
>>> def func(r):
...    return r['a']**2 + r['b']**2
>>> groupby_df = df.groupby('a')
>>> groupby_df.apply(func).reset_index(drop=True)
0     1
1     2
2     5
3    13
4    20
5    29
6    45
7    58
8    73
9    90
dtype: int64
>>> parallel_groupby_apply(groupby_df, func, progress_bar=False)
0     1
1     2
2     5
3    13
4    20
5    29
6    45
7    58
8    73
9    90
dtype: int64
```
