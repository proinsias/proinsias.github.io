---
layout: single
title: "(TIL) Python: Function disassembler"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
categories: til
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

Via [Python-tricks](https://www.getdrip.com/deliveries/t1eqbss1wvujterprnjs?__s=6e5g8qvxzzhujt5oncqs)
.
