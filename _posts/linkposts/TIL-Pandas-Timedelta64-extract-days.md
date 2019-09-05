---
layout: single
title: "(TIL) Pandas: Extract days from a timedelta64"
date:
modified:
---

To extract the integer value of days from a `numpy.timedelta64` in `pandas`, use `dt.days`
to obtain the days attribute as integers.

```python
In [14]: s = pd.Series(pd.timedelta_range(start='1 days', end='12 days', freq='3000T'))

In [15]: s
Out[15]:
0    1 days 00:00:00
1    3 days 02:00:00
2    5 days 04:00:00
3    7 days 06:00:00
4    9 days 08:00:00
5   11 days 10:00:00
dtype: timedelta64[ns]

In [16]: s.dt.days
Out[16]:
0     1
1     3
2     5
3     7
4     9
5    11
dtype: int64
```

You can use the `.components` property to access a reduced form of `timedelta64`.

```python
In [17]: s.dt.components
Out[17]:
   days  hours  minutes  seconds  milliseconds  microseconds  nanoseconds
0     1      0        0        0             0             0            0
1     3      2        0        0             0             0            0
2     5      4        0        0             0             0            0
3     7      6        0        0             0             0            0
4     9      8        0        0             0             0            0
5    11     10        0        0             0             0            0
```

Via [StackOverflow](https://stackoverflow.com/questions/18215317/extracting-days-from-a-numpy-timedelta64-value).
