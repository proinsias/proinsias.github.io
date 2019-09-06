---
layout: single
title: "(TIL) Python: Find the most common elements in an iterable"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
---

```python
>>> import collections
>>> c = collections.Counter('helloworld')

>>> c
Counter({'l': 3, 'o': 2, 'e': 1, 'd': 1, 'h': 1, 'r': 1, 'w': 1})

>>> c.most_common(3)
[('l', 3), ('o', 2), ('e', 1)]
```

Via [Python Tricks](https://dbader.org/python-tricks).
