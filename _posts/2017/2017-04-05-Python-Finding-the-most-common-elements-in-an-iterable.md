---
layout: single
title: 'Python: Find the most common elements in an iterable'
date: 2017-04-05
modified: 2023-01-10
excerpt: Using the collections module
categories: til
tags:
    - python
    - til
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
