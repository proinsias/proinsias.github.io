---
layout: single
title: "Python: Class inheritance"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
categories: til
tags:
  - python
  - til
---

You can check for class inheritance relationships with the `issubclass()` built-in:

```python
>>> class BaseClass: pass
>>> class SubClass(BaseClass): pass

>>> issubclass(SubClass, BaseClass)
True
>>> issubclass(SubClass, object)
True
>>> issubclass(BaseClass, SubClass)
False
```

Via python-tricks.
