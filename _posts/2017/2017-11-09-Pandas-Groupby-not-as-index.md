---
layout: single
title: "Pandas: Groupby Not As Index"
excerpt: Via the as_index parameter
date: 2017-11-09 12:35
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - pandas
    - til
---

Let's consider the following DataFrame:

```python
>>> df = pd.DataFrame(np.random.randn(10,3),columns=list('ABC'))
>>> df['D'] = [1, 1, 2, 2, 3, 3, 3, 4, 4, 5]
>>> df
          A         B         C  D
0 -0.860885 -1.284590  1.044217  1
1 -1.142802 -0.972855  0.926890  1
2  0.233229 -0.571801  0.698369  2
3 -0.896488 -2.112341  1.220630  2
4 -0.179748  0.868992 -0.592893  3
5 -0.033081  0.606385  0.606585  3
6 -0.078621  0.217176 -1.172216  3
7  1.533735  0.688397 -0.454629  4
8 -0.024388  1.533929  0.404984  4
9  0.085395  0.715533 -0.731354  5
```

By default, `groupby` will set the group of the `groupby` as the index of the DataFrame:

```python
>>> df.groupby('D').max()
          A         B         C
D
1 -0.860885 -0.972855  1.044217
2  0.233229 -0.571801  1.220630
3 -0.033081  0.868992  0.606585
4  1.533735  1.533929  0.404984
5  0.085395  0.715533 -0.731354
```

If you don't want this, you can set the `as_index` parameter to `False`:

```python
>>> df.groupby('D', as_index=False).max()
   D         A         B         C
0  1 -0.860885 -0.972855  1.044217
1  2  0.233229 -0.571801  1.220630
2  3 -0.033081  0.868992  0.606585
3  4  1.533735  1.533929  0.404984
4  5  0.085395  0.715533 -0.731354
```
