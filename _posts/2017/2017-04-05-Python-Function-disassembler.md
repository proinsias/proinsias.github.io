---
layout: single
title: 'Python: Function disassembler'
date: 2017-04-05
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the dis module
categories:
    - til
tags:
    - python
    - til
---

You can use Python's built-in `dis` module to disassemble functions and
inspect their CPython VM bytecode:

```python
>>> def greet(name):
...     return 'Hello, ' + name + '!'

>>> greet('Dan')
'Hello, Dan!'

>>> import dis
>>> dis.dis(greet)
2   0 LOAD_CONST     1 ('Hello, ')
    2 LOAD_FAST      0 (name)
    4 BINARY_ADD
    6 LOAD_CONST     2 ('!')
    8 BINARY_ADD
   10 RETURN_VALUE
```

Via Python-tricks.
