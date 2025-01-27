---
layout: single
title: "Pandas: Accessing additional parameters for a plot"
excerpt: Via the plot axes.
date: 2017-11-09 12:35
last_modified_at: 2023-04-28 12:52:18
categories:
    - til
tags:
    - pandas
    - til
---

Q:

How can you set parameters such as x- and y-labels?
The `plot()` wrapper for `pandas` DataFrames does not take those parameters?

A:

The `df.plot()` function returns a `matplotlib.axes.AxesSubplot` object.
You can set the labels on that object.

```python
>>> ax = df2.plot()
>>> ax.set_xlabel("x label")
>>> ax.set_ylabel("y label")
```

Via [Stack Overflow](http://stackoverflow.com/a/21487560/1257318).
