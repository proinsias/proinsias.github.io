---
layout: single
title: 'Python: Get the most of floats'
excerpt: Additional methods useful in various scenarios
date: 2021-04-06
last_modified_at: 2022-11-04
categories: til
tags:
    - float
    - python
    - til
---

> Similar to the int data type, floats also have several additional methods useful in various scenarios:

```python
# Check if the float number is actually an integer:

>>> (5.9).is_integer()
False
>>> (-9.0).is_integer()
True

# Convert a float to a tuple matching a fraction with integer values:

>>> (-5.5).as_integer_ratio()
(-11,2)
# -11 / 2 == -5.5

# Convert a float number to a hex string:

>>> (3.14).hex()
'0x1.91eb851eb851fp+1'

>>> float.hex(1.5)
'0x1.8000000000000p+0'

# Such hexadecimal representations have the form:
# [sign]['0x']int['.' fraction]['p' exponent]
# e.g 0x1.8000000000000p+0 -> 1.5
# 1.5 in decimal is 1.8 in hex
# 0 - sign
# int - str of hex. digits of integer part
# fraction - same for fractional part

# The reverse can be achieved:

>>> float.fromhex('0x1.91eb851eb851fp+1')
3.14

>>> float.fromhex('0x1.8000000000000p+0')
1.5
```

Via [enkipro.com](https://app.enkipro.com/public/insight/56c49bcfb6162b08008eeb0b).
