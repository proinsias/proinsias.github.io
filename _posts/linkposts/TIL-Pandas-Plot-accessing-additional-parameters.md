---
layout: single
title: "(TIL) Pandas: Accessing additional parameters for a plot"
date:
modified:
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
