---
layout: single
title: 'Python: The SimpleNamespace Utility Class'
excerpt: Easily add and remove attributes
date: 2021-04-06 15:48
modified: 2022-11-04 15:48
categories: til
tags:
    - python
    - til
---

> The `SimpleNamespace` type from the `types` library provides an alternative to an empty class
> (`class MyClass: pass`) from which one can add and remove attributes.

```python
import types

enki = types.SimpleNamespace()

enki.type = 'God'
print(enki.type) # God

del enki.type
print(enki.type)
# object has no attribute 'type'
```

Via [enkipro.com](https://app.enkipro.com/public/insight/56cf076ee4eff806006ee822).

> A simple `object` subclass that provides attribute access to its namespace, as well as a meaningful [representation].
>
> Unlike `object`, with `SimpleNamespace` you can add and remove attributes.
> If a `SimpleNamespace` object is initialized with keyword arguments,
> those are directly added to the underlying namespace.
>
> `SimpleNamespace` may be useful as a replacement for `class NS: pass`.
> However, for a structured record type use `namedtuple()` instead.

Via [docs.python.org](https://docs.python.org/3.5/library/types.html#additional-utility-classes-and-functions).
