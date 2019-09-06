---
layout: single
title: "(TIL) Python: Lambdas as lexical closures"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
---

A 'lexical closure' is a fancy name for a function that remembers the values
from the enclosing lexical scope even when the program flow is no longer in
that scope.
Here’s a (fairly academic) example to illustrate the idea:

```python
>>> def make_adder(n):
...     return lambda x: x + n

>>> plus_3 = make_adder(3)
>>> plus_5 = make_adder(5)

>>> plus_3(4)
7
>>> plus_5(4)
9
```

In the above example the `x + n` lambda can still access the value of `n` even
though it was defined in the `make_adder` function (the enclosing scope).

Via [dbader.org](https://dbader.org/blog/python-lambda-functions).
