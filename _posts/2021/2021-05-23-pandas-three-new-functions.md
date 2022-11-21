---
layout: single
title: 'Pandas: Three new functions'
excerpt: Tips from Towards Data Science
date: 2021-05-23
modified: 2022-11-02
categories: til
tags:
    - pandas
    - til
---

Towards Data Science on Medium has been a great source of tips so far,
and [this article](https://towardsdatascience.com/top-3-pandas-functions-i-wish-i-knew-earlier-6711030bf48a)
is a great example that highlights the following functions new to me.

```python
> import pandas as pd

> df = pd.DataFrame(data={
    'Name': ['Bob', 'Mark', 'Josh', 'Anna', 'Peter', 'Dexter'],
    'Points': [37, 91, 66, 42, 99, 81]
})

> df['Points'].nlargest(3)  # Display the 3 largest values in the 'Points' series.
4    99
1    91
5    81
Name: Points, dtype: int64

> df.nlargest(3, columns='Points')  # Display the rows associated with the 3 largest 'Points' values.
     Name  Points
4   Peter      99
1    Mark      91
5  Dexter      81

> df['Points'].nsmallest(3)
0    37
3    42
2    66
Name: Points, dtype: int64

> pd.cut(df['Points'], bins=2)  # Bin 'Points' values into 2 discrete intervals.
0    (36.938, 68.0]
1      (68.0, 99.0]
2    (36.938, 68.0]
3    (36.938, 68.0]
4      (68.0, 99.0]
5      (68.0, 99.0]
Name: Points, dtype: category
Categories (2, interval[float64]): [(36.938, 68.0] < (68.0, 99.0]]

> pd.cut(df['Points'], bins=[0, 50, 100])  # Use specific bins.
0      (0, 50]
1    (50, 100]
2    (50, 100]
3      (0, 50]
4    (50, 100]
5    (50, 100]
Name: Points, dtype: category
Categories (2, interval[int64]): [(0, 50] < (50, 100]]

> pd.cut(df['Points'], bins=[0, 50, 100], labels=['Fail', 'Pass'])  # Add labels.
0    Fail
1    Pass
2    Pass
3    Fail
4    Pass
5    Pass
Name: Points, dtype: category
Categories (2, object): ['Fail' < 'Pass']
```
