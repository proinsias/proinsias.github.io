---
layout: single
title: "(TIL) Pandas: Iterating through groups"
date: 2017-11-09 12:35
modified: 2017-11-09 12:35
---

```python
>>> df = pd.DataFrame(np.random.randn(10,3),columns=list('ABC'))

>>> df['D'] = [1, 1, 1, 2, 2, 2, 3, 3, 3, 3, ]

>>> grouped_df = df.groupby('D')

>>> for name, group_df in grouped_df:
    print(name)
    print(group_df)
1
          A         B         C  D
0  0.508471 -0.233900 -0.120570  1
1 -1.689539  0.777355 -1.089048  1
2  0.745248  0.629235  0.127678  1
2
          A         B         C  D
3 -1.467110 -0.291802 -0.088733  2
4 -1.064856 -0.304388  0.304016  2
5  0.987249  1.347647  0.152276  2
3
          A         B         C  D
6 -1.538034  0.417053  0.555181  3
7 -1.985488 -0.711631 -0.190508  3
8  1.361127 -2.192053  0.600731  3
9  0.477718  0.909850 -0.835014  3
```

Via [pandas.pydata.org](http://pandas.pydata.org/pandas-docs/stable/groupby.html#iterating-through-groups).
