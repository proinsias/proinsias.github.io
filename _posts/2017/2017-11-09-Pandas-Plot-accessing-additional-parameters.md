---
layout: single
title: 'Pandas: Accessing additional parameters for a plot'
date: 2017-11-09 12:35
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - pandas
    - til
---

Q:

How can you set parameters such as x- and y-labels?
The `plot()` wrapper for `pandas` DataFrames doesn't take those parameters?

A:

The `df.plot()` function returns a `matplotlib.axes.AxesSubplot` object.
You can set the labels on that object.

```python
>>> ax = df2.plot()
>>> ax.set_xlabel("x label")
>>> ax.set_ylabel("y label")
```

Via [StackOverflow](http://stackoverflow.com/a/21487560/1257318).
