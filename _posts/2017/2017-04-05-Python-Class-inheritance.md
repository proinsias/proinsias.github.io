---
layout: single
title: "Python: Class inheritance"
date: 2017-04-05
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the issubclass command
categories:
    - til
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
