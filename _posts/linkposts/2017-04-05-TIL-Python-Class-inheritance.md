---
layout: single
title: "(TIL) Python: Class inheritance"
date: 2017-04-05
modified: 2017-04-05
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

Via
[python-tricks](https://www.getdrip.com/deliveries/nvidr2xstzyu8zfrsqgz?__s=6e5g8qvxzzhujt5oncqs)
.
