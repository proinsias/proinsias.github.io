---
layout: single
title: "Pandas: Combine Functions"
date: 2020-09-18
last_modified_at: 2025-05-13 00:33:19
excerpt: The combine and combine_first functions
categories:
    - til
tags:
    - pandas
    - til
---

`pandas` has two handy functions for combining DataFrames:

- The
  [`combine`](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.combine.html)
  function performs a column-wise combine of one DataFrame with another:

```python
# Combine using a simple function that chooses the smaller column.

>>> def take_smaller(s1, s2):
    return s1 if s1.sum() < s2.sum() else s2
>>> df1 = pd.DataFrame({'A': [0, 0], 'B': [4, 4]})
>>> df1
   A  B
0  0  4
1  0  4
>>> df2 = pd.DataFrame({'A': [1, 1], 'B': [3, 3]})
>>> df2
   A  B
0  1  3
1  1  3
>>> df1.combine(df2, take_smaller)
   A  B
0  0  3
1  0  3

# Combine using a true element-wise combine function.

>>> df1 = pd.DataFrame({'A': [5, 0], 'B': [2, 4]})
>>> df1
   A  B
0  5  2
1  0  4
>>> df2 = pd.DataFrame({'A': [1, 1], 'B': [3, 3]})
>>> df2
   A  B
0  1  3
1  1  3
>>> df1.combine(df2, np.minimum)
   A  B
0  1  2
1  0  3
```

- The
  [`combine_first`](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.combine_first.html)
  function combines the two DataFrames by filling null values in one
  DataFrame with non-null values from the other:

```python
>>> df1 = pd.DataFrame({'A': [None, 0], 'B': [4, None]})
>>> df1
     A    B
0  NaN  4.0
1  0.0  NaN
>>> df2 = pd.DataFrame({'B': [3, 3], 'C': [1, 1]}, index=[1, 2])
>>> df2
   B  C
1  3  1
2  3  1
>>> df1.combine_first(df2)
     A    B    C
0  NaN  4.0  NaN
1  0.0  3.0  1.0
2  NaN  3.0  1.0
```
