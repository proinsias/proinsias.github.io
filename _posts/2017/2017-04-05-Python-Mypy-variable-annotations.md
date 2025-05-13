---
layout: single
title: "Python: MyPy variable annotations"
excerpt: New to Python 3.6
date: 2017-04-05 05:23
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - python
    - til
---

> In Python 3.6, variables (in global, class or local scope) can now have type annotations
> using either of the following two forms:

```python
foo: Optional[int]
bar: List[str] = []
```

> Mypy fully supports this syntax, interpreting them as equivalent to:

```python
foo = None  # type: Optional[int]
bar = []  # type: List[str]
```

Via [MyPy](https://mypy.readthedocs.io/en/latest/)
.
