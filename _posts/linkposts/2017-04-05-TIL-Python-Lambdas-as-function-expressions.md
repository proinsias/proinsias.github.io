---
layout: single
title: "(TIL) Python: Lambdas as function expressions"
date: 2017-04-05
modified: 2017-04-05
---

How do you define an function inline and then immediately call it? Like this:

```python
>>> (lambda x, y: x + y)(5, 3)
8
```

This simply states the expression to compute and then immediately evaluates it
by calling it like a regular function.

Via [dbader.org](https://dbader.org/blog/python-lambda-functions).
