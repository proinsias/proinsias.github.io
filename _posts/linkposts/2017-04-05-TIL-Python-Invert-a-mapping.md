---
layout: single
title: "(TIL) Python: Invert a mapping"
date: 2017-04-05
modified: 2017-04-05
---

Given this dictionary:

```python
my_map = { 'a': 1, 'b':2 }
```

you can invert it:

```python
inv_map = {v: k for k, v in my_map.items()}
```

to get:

```python
$ inv_map
{ 1: 'a', 2: 'b' }
```

Via [StackOverflow.com](https://stackoverflow.com/q/483666/1257318).
