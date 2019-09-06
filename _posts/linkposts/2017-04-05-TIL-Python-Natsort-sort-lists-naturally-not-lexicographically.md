---
layout: single
title: "(TIL) Python: Sort lists naturally not lexicographically with natsort"
date: 2017-04-05
modified: 2017-04-05
---

When you try to sort a list of strings that contain numbers, the normal `python` `sort`
algorithm sorts lexicographically, so you might not get the results that you expect.

```python
>>> a = ['2 ft 7 in', '1 ft 5 in', '10 ft 2 in', '2 ft 11 in', '7 ft 6 in']
>>> sorted(a)
['1 ft 5 in', '10 ft 2 in', '2 ft 11 in', '2 ft 7 in', '7 ft 6 in']
```

`natsort` provides a function `natsorted` that helps sort lists "naturally".
Using `natsorted` is simple:

```python
>>> from natsort import natsorted
>>> a = ['2 ft 7 in', '1 ft 5 in', '10 ft 2 in', '2 ft 11 in', '7 ft 6 in']
>>> natsorted(a)
['1 ft 5 in', '2 ft 7 in', '2 ft 11 in', '7 ft 6 in', '10 ft 2 in']
```

Via [StackOverflow](http://stackoverflow.com/a/18415320) and [natsort](https://github.com/SethMMorton/natsort).
