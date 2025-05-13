---
layout: single
title: "Python: Thousands Separator in Formatted Strings"
date: 2017-04-05
last_modified_at: 2025-05-13 00:33:19
excerpt: Just add ':,' to the format specifier
categories:
    - til
tags:
    - python
    - til
---

It's very easy to add thousands separators to numbers:

```python
>>> big_num = 1234567890.123

>>> print(f'{big_num:,}')
1,234,567,890.123
```
