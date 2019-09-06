---
layout: single
title: "(TIL) Python: Private variables"
date: 2017-04-05
modified: 2017-04-05
---

To make Python treat a variable as pseudo-private, follow the convention of putting two
underscores (i.e., `__`) at the beginning of the variable's name, e.g.:

```python
class Enki:
    def __init__(self):
        self.__private = 3.14
        print(self.__private)

enki = Enki()  # prints 3.14
```

In effect, Python renames the variable using the `_classname__varname` pattern.
If we try to access the original `__private` variable name, an error is thrown:

```python
>>> print(enki.__private)
AttributeError .. no __private attribute
```

It is possible to access it through `_classname__varname`, but it's not recommended to
access variables in this way, because it is an implementation detail and may break in the
future.

```python
>>> print(enki._Enki__private)
prints 3.14
```

Via [enkipro.com](https://enkipro.com/insight/56cc7e3dc0159e0700cdcb5f).
